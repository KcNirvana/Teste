.class public final Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "ShortVideoDetailView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001:\u0001MB\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0019H\u0002J\u0010\u0010&\u001a\u00020\'2\u0006\u0010%\u001a\u00020\u0019H\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0002J\u001f\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020\u00102\u0008\u0010.\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0002\u0010/J\"\u00100\u001a\u00020)2\u0006\u00101\u001a\u00020\u00122\u0008\u00102\u001a\u0004\u0018\u00010\u00122\u0008\u00103\u001a\u0004\u0018\u00010\u0012J\u0008\u00104\u001a\u00020)H\u0016J\u0008\u00105\u001a\u00020)H\u0016J\u0008\u00106\u001a\u00020)H\u0016J\u001a\u00107\u001a\u00020)2\u0008\u0010-\u001a\u0004\u0018\u00010\u00102\u0006\u00108\u001a\u000209H\u0002J\u001c\u0010:\u001a\u00020)2\u0008\u0010-\u001a\u0004\u0018\u00010\u00102\u0008\u00108\u001a\u0004\u0018\u000109H\u0002J\u0012\u0010;\u001a\u00020)2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0014J\u0006\u0010>\u001a\u00020)J\u001a\u0010?\u001a\u00020)2\u0008\u0010-\u001a\u0004\u0018\u00010\u00102\u0006\u00108\u001a\u000209H\u0002J\u001a\u0010@\u001a\u00020)2\u0006\u0010-\u001a\u00020\u00102\u0008\u00108\u001a\u0004\u0018\u000109H\u0002J\"\u0010A\u001a\u00020)2\u0006\u0010B\u001a\u00020\t2\u0008\u0010-\u001a\u0004\u0018\u00010\u00102\u0006\u00108\u001a\u000209H\u0002J\u001a\u0010C\u001a\u00020)2\u0006\u0010-\u001a\u00020\u00102\u0008\u00108\u001a\u0004\u0018\u000109H\u0002J\u0006\u0010D\u001a\u00020)J\u0006\u0010E\u001a\u00020)J\u0010\u0010F\u001a\u00020)2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0010\u0010G\u001a\u00020)2\u0006\u0010H\u001a\u00020+H\u0002J$\u0010I\u001a\u00020)2\u0008\u00101\u001a\u0004\u0018\u00010\u00122\u0008\u00102\u001a\u0004\u0018\u00010\u00122\u0008\u00103\u001a\u0004\u0018\u00010\u0012J\u0008\u0010J\u001a\u00020)H\u0002J\u0010\u0010K\u001a\u00020)2\u0008\u0010L\u001a\u0004\u0018\u00010\u000cR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;",
        "Lcom/miui/video/framework/base/ui/UIBase;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "innerPlayListener",
        "Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;",
        "mActionWrapper",
        "Lcom/miui/video/service/action/ContentActionWrapper;",
        "mAutoPlayEntity",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "mCurrentSource",
        "",
        "mDataSource",
        "Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;",
        "mInfoStreamPresenter",
        "Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;",
        "mItemId",
        "mMediaData",
        "Lcom/miui/video/base/model/MediaData$Media;",
        "mPath",
        "mSource",
        "outPlayListener",
        "vRecyclerListView",
        "Lcom/miui/video/common/feed/UIRecyclerListView;",
        "vUIAutoPlayView",
        "Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;",
        "wrapper",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;",
        "convertToOVFavorVideo",
        "Lcom/miui/video/base/database/OVFavorVideoEntity;",
        "mediaData",
        "convertToQueryFavorBody",
        "Lcom/miui/video/base/common/data/QueryFavorBody;",
        "countSelectNumber",
        "",
        "tinyCardEntity",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "handleActionStatus",
        "data",
        "status",
        "(Lcom/miui/video/common/feed/entity/FeedRowEntity;Ljava/lang/Integer;)V",
        "initData",
        "itemId",
        "source",
        "path",
        "initFindViews",
        "initViewsEvent",
        "initViewsValue",
        "onAutoPlayNextClick",
        "viewObject",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "onAutoPlayNextQuery",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onDestroy",
        "onFavorClick",
        "onFavorQuery",
        "onLikeClick",
        "actionId",
        "onLikeQuery",
        "onPause",
        "onResume",
        "onShareClick",
        "onSubscribeClick",
        "entity",
        "refresh",
        "registerPresentAction",
        "setPlayListener",
        "playListener",
        "IPlayListener",
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
.field private _$_findViewCache:Ljava/util/HashMap;

.field private innerPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

.field private mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

.field private mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

.field private mCurrentSource:Ljava/lang/String;

.field private mDataSource:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

.field private mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

.field private mItemId:Ljava/lang/String;

.field private mMediaData:Lcom/miui/video/base/model/MediaData$Media;

.field private mPath:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private outPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

.field private vRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

.field private vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

.field private wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMAutoPlayEntity$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)Lcom/miui/video/common/feed/entity/FeedRowEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    return-object p0
.end method

.method public static final synthetic access$getMMediaData$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)Lcom/miui/video/base/model/MediaData$Media;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    return-object p0
.end method

.method public static final synthetic access$getOutPlayListener$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->outPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    return-object p0
.end method

.method public static final synthetic access$getVUIAutoPlayView$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    return-object p0
.end method

.method public static final synthetic access$getWrapper$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    return-object p0
.end method

.method public static final synthetic access$onAutoPlayNextClick(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onAutoPlayNextClick(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onAutoPlayNextQuery(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onAutoPlayNextQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onFavorClick(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onFavorClick(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onFavorQuery(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onFavorQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onLikeClick(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onLikeClick(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onLikeQuery(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onLikeQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onShareClick(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onShareClick(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$onSubscribeClick(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onSubscribeClick(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    return-void
.end method

.method public static final synthetic access$setMAutoPlayEntity$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/entity/FeedRowEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    return-void
.end method

.method public static final synthetic access$setMMediaData$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/base/model/MediaData$Media;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    return-void
.end method

.method public static final synthetic access$setOutPlayListener$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->outPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    return-void
.end method

.method public static final synthetic access$setVUIAutoPlayView$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    return-void
.end method

.method public static final synthetic access$setWrapper$p(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    return-void
.end method

.method private final convertToOVFavorVideo(Lcom/miui/video/base/model/MediaData$Media;)Lcom/miui/video/base/database/OVFavorVideoEntity;
    .locals 4

    new-instance v0, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/OVFavorVideoEntity;-><init>()V

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setUser_id(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/model/MediaData$Episode;

    iget-object v2, p1, Lcom/miui/video/base/model/MediaData$Media;->item_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setItem_type(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/miui/video/base/model/MediaData$Media;->author_info:Lcom/miui/video/base/model/MediaData$AuthorInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/miui/video/base/model/MediaData$AuthorInfo;->author_id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setAuthorId(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/miui/video/base/model/MediaData$Media;->author_info:Lcom/miui/video/base/model/MediaData$AuthorInfo;

    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/miui/video/base/model/MediaData$AuthorInfo;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v3}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setAuthor_name(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/miui/video/base/model/MediaData$Episode;->playlist_id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setPlaylist_id(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/miui/video/base/model/MediaData$Episode;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setVideoId(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/miui/video/base/model/MediaData$Episode;->top_right_logo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setCp_logo(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/miui/video/base/model/MediaData$Episode;->duration:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setDuration(J)V

    iget-object p1, v1, Lcom/miui/video/base/model/MediaData$Episode;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setImage_url(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/miui/video/base/model/MediaData$Episode;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setTitle(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/miui/video/base/model/MediaData$Episode;->target:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setTarget(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setSave_time(J)V

    return-object v0
.end method

.method private final convertToQueryFavorBody(Lcom/miui/video/base/model/MediaData$Media;)Lcom/miui/video/base/common/data/QueryFavorBody;
    .locals 3

    new-instance v0, Lcom/miui/video/base/common/data/QueryFavorBody;

    invoke-direct {v0}, Lcom/miui/video/base/common/data/QueryFavorBody;-><init>()V

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/model/MediaData$Episode;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/miui/video/base/model/MediaData$Episode;->playlist_id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/miui/video/base/common/data/QueryFavorBody;->playlist_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/video/base/common/data/QueryFavorBody;->video_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/video/base/model/MediaData$Media;->item_type:Ljava/lang/String;

    iput-object p1, v0, Lcom/miui/video/base/common/data/QueryFavorBody;->feed_type:Ljava/lang/String;

    return-object v0
.end method

.method private final countSelectNumber(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getViewCount()J

    move-result-wide v0

    const-wide/16 v2, 0x3e7

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "1k"

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getViewCount()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getViewCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setTitle(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final handleActionStatus(Lcom/miui/video/common/feed/entity/FeedRowEntity;Ljava/lang/Integer;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    const-string v2, "data[0]"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    const-string v2, "data[1]"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v2, 0x2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_3

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    const-string v2, "data[0]"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    goto :goto_3

    :cond_3
    :goto_1
    const/4 v2, 0x3

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_5

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    const-string v2, "data[0]"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    const-string v2, "data[1]"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x4

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_7

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    const-string v2, "data[1]"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    :cond_7
    :goto_3
    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    const-string v1, "data[0]"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->countSelectNumber(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    const-string p2, "data[1]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->countSelectNumber(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    return-void
.end method

.method private final onAutoPlayNextClick(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v2, "entity"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    :goto_0
    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p2, v1, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "context"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, p2, v1}, Lcom/miui/video/service/action/ContentActionWrapper;->doAutoPlayerAction(Landroid/content/Context;Z)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private final onAutoPlayNextQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const-string v2, "entity"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/miui/video/service/action/ContentActionWrapper;->doAutoPlayerQuery(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p2, v1, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method private final onFavorClick(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v1

    const-string v2, "data[3]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    const-string v2, "data[3]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    move-object v0, p1

    check-cast v0, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p2, v2, v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {p0, v4}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->convertToOVFavorVideo(Lcom/miui/video/base/model/MediaData$Media;)Lcom/miui/video/base/database/OVFavorVideoEntity;

    move-result-object v4

    if-ne v1, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    new-instance v3, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;

    invoke-direct {v3, v1, p1, p2}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorClick$1;-><init>(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    check-cast v3, Lcom/miui/video/service/action/ContentActionView;

    invoke-virtual {v0, v4, v2, v3}, Lcom/miui/video/service/action/ContentActionWrapper;->doVideoFavorAction(Lcom/miui/video/base/database/OVFavorVideoEntity;ZLcom/miui/video/service/action/ContentActionView;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private final onFavorQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->convertToQueryFavorBody(Lcom/miui/video/base/model/MediaData$Media;)Lcom/miui/video/base/common/data/QueryFavorBody;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorQuery$1;

    invoke-direct {v2, p1, p2}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onFavorQuery$1;-><init>(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    check-cast v2, Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/action/ContentActionWrapper;->queryFavorState(Lcom/miui/video/base/common/data/QueryFavorBody;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V

    :cond_2
    return-void
.end method

.method private final onLikeClick(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 9

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_liks_btn_click:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    const-string v0, "data[0]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result p1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x2

    const/4 v2, 0x2

    :cond_1
    :goto_0
    move v7, v2

    goto :goto_1

    :cond_2
    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_disliks_btn_click:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    const-string v0, "data[1]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result p1

    if-ne p1, v2, :cond_3

    const/4 p1, 0x4

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    const/4 v2, 0x3

    goto :goto_0

    :cond_4
    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->handleActionStatus(Lcom/miui/video/common/feed/entity/FeedRowEntity;Ljava/lang/Integer;)V

    check-cast p2, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p3, v1, p2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string p1, "context"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v5, p1, Lcom/miui/video/base/model/MediaData$Media;->id:Ljava/lang/String;

    const-string p1, "mMediaData!!.id"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "video"

    new-instance p1, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onLikeClick$1;

    invoke-direct {p1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onLikeClick$1;-><init>()V

    move-object v8, p1

    check-cast v8, Lcom/miui/video/common/library/base/BaseObserver;

    invoke-virtual/range {v3 .. v8}, Lcom/miui/video/service/action/ContentActionWrapper;->doLikeAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/miui/video/common/library/base/BaseObserver;)V

    :cond_6
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method private final onLikeQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 5

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v1

    const-string v2, "data[0]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v2

    const-string v3, "data[0]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSubTitle(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v2

    const-string v3, "data[1]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v1

    const-string v3, "data[1]"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSubTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mItemId:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v4, "mItemId"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/miui/video/service/action/ContentActionWrapper;->getLikeActionType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->handleActionStatus(Lcom/miui/video/common/feed/entity/FeedRowEntity;Ljava/lang/Integer;)V

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p2, v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    :cond_2
    return-void
.end method

.method private final onShareClick(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$Media;->poster:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v1, v1, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/model/MediaData$Episode;

    iget-object v1, v1, Lcom/miui/video/base/model/MediaData$Episode;->target:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/framework/uri/CEntitys;->getLinkEntity(Ljava/lang/String;)Lcom/miui/video/framework/uri/LinkEntity;

    move-result-object v1

    const-string v3, "entity"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/video/framework/uri/LinkEntity;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/miui/video/service/share/data/ShareInfo$Builder;

    invoke-direct {v3}, Lcom/miui/video/service/share/data/ShareInfo$Builder;-><init>()V

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->type(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v4, v4, Lcom/miui/video/base/model/MediaData$Media;->play_list:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/base/model/MediaData$Episode;

    iget-object v2, v2, Lcom/miui/video/base/model/MediaData$Episode;->id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->id(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v3, v3, Lcom/miui/video/base/model/MediaData$Media;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->title(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->bitmap(Landroid/graphics/Bitmap;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v3, v3, Lcom/miui/video/base/model/MediaData$Media;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->subTitle(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->imageUrl(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/blank_transition?target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->link(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    const-string v1, "short_detail_page"

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->from(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->build()Lcom/miui/video/service/share/data/ShareInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v1, v0, p1}, Lcom/miui/video/service/action/ContentActionWrapper;->doVideoShareAction(Lcom/miui/video/service/share/data/ShareInfo;Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method private final onSubscribeClick(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$Media;->author_info:Lcom/miui/video/base/model/MediaData$AuthorInfo;

    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$AuthorInfo;->author_id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubscribe_status()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Landroid/app/Activity;

    const-string v4, "itemId"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;

    invoke-direct {v4, p0, p1, v2, v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$onSubscribeClick$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;Lcom/miui/video/common/feed/entity/TinyCardEntity;ZLjava/lang/String;)V

    check-cast v4, Lcom/miui/video/common/library/base/BaseObserver;

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/miui/video/service/action/ContentActionWrapper;->doSubscriptionAuthor(Landroid/app/Activity;Ljava/lang/String;ZLcom/miui/video/common/library/base/BaseObserver;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private final registerPresentAction()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_liks_btn_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$1;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_1

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_disliks_btn_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$2;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$2;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_2

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_share_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    new-instance v3, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$3;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$3;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_3

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_favour_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$4;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$4;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_4

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_detail_action_show:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$5;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$5;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_5

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_auto_play_next_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$6;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$6;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_6

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_auto_play_next_show:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$7;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$7;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_7

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_enter_author_detail_btn_click:I

    new-instance v2, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$8;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$8;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V

    check-cast v2, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_8

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_subscribe_author_btn_click:I

    new-instance v2, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$9;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$registerPresentAction$9;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V

    check-cast v2, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILcom/miui/video/common/feed/architeture/action/ActionListener;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final initData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mItemId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mSource:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mDataSource:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    if-nez p1, :cond_0

    const-string p2, "mDataSource"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mItemId:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p3, "mItemId"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mSource:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez p1, :cond_2

    const-string p2, "mInfoStreamPresenter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    return-void
.end method

.method public initFindViews()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/shortvideo/R$layout;->ui_short_video_detail:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->vView:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.ui_recycler_list_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerListView;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->vRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->registerPresentAction()V

    new-instance v0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$initViewsEvent$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$initViewsEvent$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;)V

    check-cast v0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->innerPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mDataSource:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    if-nez v0, :cond_0

    const-string v1, "mDataSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->innerPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->setPlayListener(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 4

    const-string v0, "short_video_detail"

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mCurrentSource:Ljava/lang/String;

    new-instance v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->vRecyclerListView:Lcom/miui/video/common/feed/UIRecyclerListView;

    if-nez v1, :cond_0

    const-string v2, "vRecyclerListView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    if-eqz v0, :cond_1

    const-string v1, "short_video_detail"

    invoke-virtual {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->setRecyclerViewPageFlag(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    invoke-direct {v0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mDataSource:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    new-instance v0, Lcom/miui/video/service/action/ContentActionWrapper;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mCurrentSource:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v2, "mCurrentSource"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {v0, v1}, Lcom/miui/video/service/action/ContentActionWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    check-cast v1, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mDataSource:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    if-nez v2, :cond_3

    const-string v3, "mDataSource"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v2, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    new-instance v3, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;

    invoke-direct {v3}, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;-><init>()V

    check-cast v3, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    check-cast v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->onAutoPlayNextQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onDestory()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/video/service/action/ContentActionWrapper;->release()V

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->outPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->innerPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onResume()V

    return-void
.end method

.method public final refresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mItemId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mSource:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mPath:Ljava/lang/String;

    const/4 p2, 0x0

    move-object p3, p2

    check-cast p3, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iput-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    check-cast p2, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    iput-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    iget-object p2, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mDataSource:Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;

    if-nez p2, :cond_1

    const-string p3, "mDataSource"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p3, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mSource:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mPath:Ljava/lang/String;

    invoke-virtual {p2, p1, p3, v0}, Lcom/miui/video/biz/shortvideo/datasource/ShortVideoDetailDataSource;->refreshData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez p1, :cond_2

    const-string p2, "mInfoStreamPresenter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const/4 p2, 0x1

    sget-object p3, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_INIT:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-virtual {p1, p2, p3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    return-void
.end method

.method public final setPlayListener(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;)V
    .locals 0
    .param p1    # Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView;->outPlayListener:Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoDetailView$IPlayListener;

    return-void
.end method
