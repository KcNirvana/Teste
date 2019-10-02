.class public final Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;
.super Ljava/lang/Object;
.source "ShortVideoDetailDataSource.kt"

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
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u001c\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u00170\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001e\u0010\u001a\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0017\u0018\u00010\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J$\u0010\u001b\u001a\u00020\u00142\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007J$\u0010\u001f\u001a\u00020\u00142\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007J\u000e\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u000cJ\u0008\u0010\"\u001a\u00020\u0014H\u0002J\u0008\u0010#\u001a\u00020\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "()V",
        "mDisposables",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "mItemId",
        "",
        "mMedia",
        "Lcom/miui/video/base/model/MediaData$Media;",
        "mPath",
        "mPlayListener",
        "Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;",
        "mSource",
        "convertToEpisode",
        "Lcom/miui/video/base/model/MediaData$Episode;",
        "tinyCardEntity",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "convertToMedia",
        "destory",
        "",
        "load",
        "Lio/reactivex/Observable;",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "loadMore",
        "refreshData",
        "itemId",
        "source",
        "path",
        "setData",
        "setPlayListener",
        "playListener",
        "trackVideoDetailExpose",
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
.field private final mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private mItemId:Ljava/lang/String;

.field private mMedia:Lcom/miui/video/base/model/MediaData$Media;

.field private mPath:Ljava/lang/String;

.field private mPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$convertToEpisode(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Episode;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->convertToEpisode(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Episode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertToMedia(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Media;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->convertToMedia(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMMedia$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;)Lcom/miui/video/base/model/MediaData$Media;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mMedia:Lcom/miui/video/base/model/MediaData$Media;

    return-object p0
.end method

.method public static final synthetic access$getMPlayListener$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;)Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    return-object p0
.end method

.method public static final synthetic access$setMMedia$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;Lcom/miui/video/base/model/MediaData$Media;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mMedia:Lcom/miui/video/base/model/MediaData$Media;

    return-void
.end method

.method public static final synthetic access$setMPlayListener$p(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    return-void
.end method

.method public static final synthetic access$trackVideoDetailExpose(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->trackVideoDetailExpose()V

    return-void
.end method

.method private final convertToEpisode(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Episode;
    .locals 2

    new-instance v0, Lcom/miui/video/base/model/MediaData$Episode;

    invoke-direct {v0}, Lcom/miui/video/base/model/MediaData$Episode;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Episode;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Episode;->target:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Episode;->targetAddition:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Episode;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->cp:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Episode;->cp:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTopRightLogo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Episode;->top_right_logo:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Episode;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlaylistId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/video/base/model/MediaData$Episode;->playlist_id:Ljava/lang/String;

    return-object v0
.end method

.method private final convertToMedia(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Media;
    .locals 3

    new-instance v0, Lcom/miui/video/base/model/MediaData$Media;

    invoke-direct {v0}, Lcom/miui/video/base/model/MediaData$Media;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Media;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Media;->item_type:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/video/base/model/MediaData$Media;->videoType:I

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/video/base/model/MediaData$Media;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/video/base/model/MediaData$Media;->poster:Ljava/lang/String;

    iput v1, v0, Lcom/miui/video/base/model/MediaData$Media;->episode_number:I

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getPlayInfoList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Media;->play:Ljava/util/List;

    new-instance v1, Lcom/miui/video/base/model/MediaData$AuthorInfo;

    invoke-direct {v1}, Lcom/miui/video/base/model/MediaData$AuthorInfo;-><init>()V

    iget-object v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorId:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/video/base/model/MediaData$AuthorInfo;->author_id:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorName:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/video/base/model/MediaData$AuthorInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorTarget:Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/video/base/model/MediaData$AuthorInfo;->target:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorProfile:Ljava/lang/String;

    iput-object p1, v1, Lcom/miui/video/base/model/MediaData$AuthorInfo;->profile:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Media;->author_info:Lcom/miui/video/base/model/MediaData$AuthorInfo;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Media;->recommend_list:Ljava/util/List;

    return-object v0
.end method

.method private final trackVideoDetailExpose()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "module"

    const-string v2, "video_detail_page"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event"

    const-string v2, "video_detail_expose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mSource:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "source"

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mSource:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const-string v2, "item_id"

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mItemId:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "item_type"

    const-string v3, "short_video"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v0, v1, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    return-void
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

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mPath:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mPath:Ljava/lang/String;

    :cond_0
    sget-object p1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->startStep(I)V

    const-class p1, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    invoke-static {p1}, Lcom/miui/video/base/common/net/api/RetroApiService;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mItemId:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mPath:Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {p1, v1, v2}, Lcom/miui/video/biz/shortvideo/datasource/RetroShortVideoApi;->getShortVideoDetail(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$observable$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$observable$1;-><init>(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v1, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$observable$2;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$observable$2;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v1, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$observable$3;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$observable$3;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v1, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$observable$4;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$observable$4;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->share()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$1;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$1;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$2;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$2;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$3;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$3;

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$4;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$4;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$5;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$5;

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$6;

    invoke-direct {v2, v1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$6;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$7;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$7;

    check-cast v2, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$8;->INSTANCE:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$8;

    check-cast v2, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;

    invoke-direct {v2, p0, v1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$9;-><init>(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$10;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$10;-><init>(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;)V

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$11;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$11;-><init>(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    new-instance v2, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$12;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource$load$disposable$12;-><init>(Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    const-string v0, "observable"

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

.method public final refreshData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mItemId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mSource:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mPath:Ljava/lang/String;

    return-void
.end method

.method public final setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mItemId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mSource:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mPath:Ljava/lang/String;

    return-void
.end method

.method public final setPlayListener(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "playListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->mPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    return-void
.end method

.method public updatePage()V
    .locals 0

    return-void
.end method
