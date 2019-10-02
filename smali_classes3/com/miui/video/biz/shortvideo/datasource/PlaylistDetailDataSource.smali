.class public final Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;
.super Ljava/lang/Object;
.source "PlaylistDetailDataSource.kt"

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
    value = "SMAP\nPlaylistDetailDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaylistDetailDataSource.kt\ncom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n671#2:150\n744#2,2:151\n671#2:153\n744#2,2:154\n671#2:156\n744#2,2:157\n*E\n*S KotlinDebug\n*F\n+ 1 PlaylistDetailDataSource.kt\ncom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource\n*L\n31#1:150\n31#1,2:151\n45#1:153\n45#1,2:154\n46#1:156\n46#1,2:157\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011J\u0006\u0010\u0014\u001a\u00020\u0015J\u001e\u0010\u0016\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0018\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001e\u0010\u001b\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0018\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0006\u0010\u001c\u001a\u00020\u000fJ\u0008\u0010\u001d\u001a\u00020\u000fH\u0002J\u0010\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001f\u001a\u00020\u000fH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "target",
        "",
        "dataListener",
        "Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;",
        "source",
        "playlistId",
        "(Ljava/lang/String;Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;Ljava/lang/String;Ljava/lang/String;)V",
        "mApi",
        "Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailApi;",
        "page",
        "",
        "destory",
        "",
        "filter",
        "",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "list",
        "hasMore",
        "",
        "load",
        "Lio/reactivex/Observable;",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "loadMore",
        "refreshDone",
        "trackPlaylistDetailExpose",
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
.field private final dataListener:Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;

.field private mApi:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailApi;

.field private page:I

.field private final playlistId:Ljava/lang/String;

.field private final source:Ljava/lang/String;

.field private target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlistId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->target:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->dataListener:Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;

    iput-object p3, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->source:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->playlistId:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->page:I

    const-class p1, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "RetroApiService.create(P\u2026istDetailApi::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailApi;

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->mApi:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailApi;

    return-void
.end method

.method public static final synthetic access$getDataListener$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;)Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->dataListener:Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;

    return-object p0
.end method

.method public static final synthetic access$getPage$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->page:I

    return p0
.end method

.method public static final synthetic access$getTarget$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->target:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setPage$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->page:I

    return-void
.end method

.method public static final synthetic access$setTarget$p(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->target:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$trackPlaylistDetailExpose(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->trackPlaylistDetailExpose()V

    return-void
.end method

.method private final trackPlaylistDetailExpose()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "module"

    const-string v2, "playlist_page"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "playlist_page_expose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->source:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "source"

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->source:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const-string v2, "item_id"

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->playlistId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v0, v1, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method private final trackRefreshEvent(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "module"

    const-string v2, "playlist_page"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    const-string v1, "module"

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->target:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "page"

    iget v2, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->page:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v2

    invoke-static {v1, v0, p1, v2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

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

.method public final filter(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "two_corner_icon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->dataListener:Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;

    invoke-virtual {v4, v6}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v7

    const-string v8, "it[0]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v7

    if-ne v7, v3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-interface {v5, v7}, Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;->onFavorData(Z)V

    :cond_2
    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "two_corner_icon"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "normal_text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "items_left_image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v1, v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->setLast(Z)V

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->dataListener:Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;

    invoke-interface {v1}, Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;->onNoMoreData()V

    :cond_5
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->dataListener:Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v5}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "items_full_image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;->onDataSuccess(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->dataListener:Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "playlist_detail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;->onDetailInfo(Ljava/util/List;)V

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final hasMore()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->target:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "refreshType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->trackRefreshEvent(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    sget-object p1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->mApi:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailApi;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist/detail?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailApi;->getPlaylistDetail(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$1;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$1;

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$2;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$load$3;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

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

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->trackRefreshEvent(Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->mApi:Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailApi;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->target:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailApi;->getPlaylistDetail(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$loadMore$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource$loadMore$1;-><init>(Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final refreshDone()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;->dataListener:Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;

    invoke-interface {v0}, Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;->onRefreshDone()V

    return-void
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
