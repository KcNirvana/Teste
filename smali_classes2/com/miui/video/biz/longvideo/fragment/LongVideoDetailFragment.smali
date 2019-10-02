.class public final Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;
.super Lcom/miui/video/service/base/VideoBaseFragment;
.source "LongVideoDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseFragment<",
        "Lcom/miui/video/common/library/base/impl/IPresenter<",
        "Lcom/miui/video/common/library/base/impl/IView;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 O2\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001OB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0013H\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010!\u001a\u00020\u0013H\u0002J\u0010\u0010$\u001a\u00020%2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u001f\u0010&\u001a\u00020%2\u0006\u0010\'\u001a\u00020\r2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0002\u00a2\u0006\u0002\u0010*J\u0008\u0010+\u001a\u00020%H\u0002J\u001e\u0010,\u001a\u00020%2\u0014\u0010-\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000/\u0018\u00010.H\u0002J\u0012\u00101\u001a\u00020%2\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J\u001a\u00104\u001a\u00020%2\u0008\u0010\'\u001a\u0004\u0018\u00010\r2\u0006\u00105\u001a\u000206H\u0002J\u001c\u00107\u001a\u00020%2\u0008\u0010\'\u001a\u0004\u0018\u00010\r2\u0008\u00105\u001a\u0004\u0018\u000106H\u0002J\u0008\u00108\u001a\u000209H\u0016J\u0012\u0010:\u001a\u00020%2\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0016J\u0008\u0010=\u001a\u00020%H\u0016J\u001a\u0010>\u001a\u00020%2\u0008\u0010\'\u001a\u0004\u0018\u00010\r2\u0006\u00105\u001a\u000206H\u0002J\u001a\u0010?\u001a\u00020%2\u0006\u0010\'\u001a\u00020\r2\u0008\u00105\u001a\u0004\u0018\u000106H\u0002J\"\u0010@\u001a\u00020%2\u0006\u0010A\u001a\u00020)2\u0008\u0010\'\u001a\u0004\u0018\u00010\r2\u0006\u00105\u001a\u000206H\u0002J\u001a\u0010B\u001a\u00020%2\u0006\u0010\'\u001a\u00020\r2\u0008\u00105\u001a\u0004\u0018\u000106H\u0002J\u0008\u0010C\u001a\u00020%H\u0016J\u0008\u0010D\u001a\u00020%H\u0016J\u0010\u0010E\u001a\u00020%2\u0006\u0010F\u001a\u00020GH\u0002J\u0018\u0010H\u001a\u00020%2\u0006\u0010I\u001a\u0002092\u0006\u0010J\u001a\u00020KH\u0016J\u0008\u0010L\u001a\u00020%H\u0002J\u0008\u0010M\u001a\u00020)H\u0014J\u0008\u0010N\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006P"
    }
    d2 = {
        "Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;",
        "Lcom/miui/video/service/base/VideoBaseFragment;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "()V",
        "REPORT_TARGET_SOURCE",
        "",
        "headVideoView",
        "Lcom/miui/video/biz/longvideo/view/HeadVideoView;",
        "itemId",
        "mActionWrapper",
        "Lcom/miui/video/service/action/ContentActionWrapper;",
        "mAutoPlayEntity",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "mDatasource",
        "Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;",
        "mInfoStreamPresenter",
        "Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;",
        "mMediaData",
        "Lcom/miui/video/base/model/MediaData$Media;",
        "playlistId",
        "source",
        "vUIAutoPlayView",
        "Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;",
        "wrapper",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;",
        "convertToEpisode",
        "Lcom/miui/video/base/model/MediaData$Episode;",
        "tinyCardEntity",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "convertToMedia",
        "convertToOVFavorVideo",
        "Lcom/miui/video/base/database/OVFavorVideoEntity;",
        "mediaData",
        "convertToQueryFavorBody",
        "Lcom/miui/video/base/common/data/QueryFavorBody;",
        "countSelectNumber",
        "",
        "handleActionStatus",
        "data",
        "status",
        "",
        "(Lcom/miui/video/common/feed/entity/FeedRowEntity;Ljava/lang/Integer;)V",
        "initIntent",
        "initVideo",
        "observable",
        "Lio/reactivex/Observable;",
        "Lcom/miui/video/base/common/net/model/ModelData;",
        "Lcom/miui/video/base/common/net/model/CardListEntity;",
        "onActivityCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onAutoPlayNextClick",
        "viewObject",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "onAutoPlayNextQuery",
        "onBackPressed",
        "",
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
        "context",
        "Landroid/content/Context;",
        "refresh",
        "force",
        "refreshType",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "registerPresentAction",
        "setLayoutResId",
        "tackerPageName",
        "Companion",
        "biz_group_longvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$Companion;


# instance fields
.field private REPORT_TARGET_SOURCE:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private headVideoView:Lcom/miui/video/biz/longvideo/view/HeadVideoView;

.field private itemId:Ljava/lang/String;

.field private mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

.field private mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

.field private mDatasource:Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;

.field private mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

.field private mMediaData:Lcom/miui/video/base/model/MediaData$Media;

.field private playlistId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

.field private wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->Companion:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->source:Ljava/lang/String;

    const-string v0, "long_video_detail"

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->REPORT_TARGET_SOURCE:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$convertToEpisode(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Episode;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->convertToEpisode(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Episode;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertToMedia(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Media;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->convertToMedia(Lcom/miui/video/common/feed/entity/TinyCardEntity;)Lcom/miui/video/base/model/MediaData$Media;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHeadVideoView$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Lcom/miui/video/biz/longvideo/view/HeadVideoView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->headVideoView:Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    return-object p0
.end method

.method public static final synthetic access$getMAutoPlayEntity$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Lcom/miui/video/common/feed/entity/FeedRowEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    return-object p0
.end method

.method public static final synthetic access$getMMediaData$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Lcom/miui/video/base/model/MediaData$Media;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    return-object p0
.end method

.method public static final synthetic access$getPlaylistId$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->playlistId:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, "playlistId"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getVUIAutoPlayView$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    return-object p0
.end method

.method public static final synthetic access$initVideo(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lio/reactivex/Observable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->initVideo(Lio/reactivex/Observable;)V

    return-void
.end method

.method public static final synthetic access$onAutoPlayNextClick(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->onAutoPlayNextClick(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onAutoPlayNextQuery(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->onAutoPlayNextQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onFavorClick(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->onFavorClick(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onFavorQuery(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->onFavorQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onLikeClick(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->onLikeClick(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onLikeQuery(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->onLikeQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$onShareClick(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->onShareClick(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setHeadVideoView$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/biz/longvideo/view/HeadVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->headVideoView:Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    return-void
.end method

.method public static final synthetic access$setMAutoPlayEntity$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/entity/FeedRowEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    return-void
.end method

.method public static final synthetic access$setMMediaData$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/base/model/MediaData$Media;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    return-void
.end method

.method public static final synthetic access$setPlaylistId$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->playlistId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setVUIAutoPlayView$p(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

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

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Episode;->playlist_id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getGroupName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/video/base/model/MediaData$Episode;->groupName:Ljava/lang/String;

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

    const/4 v1, 0x2

    iput v1, v0, Lcom/miui/video/base/model/MediaData$Media;->videoType:I

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Media;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/model/MediaData$Media;->poster:Ljava/lang/String;

    const/4 v1, 0x1

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

    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/miui/video/base/model/MediaData$Media;->trailerList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/miui/video/base/model/MediaData$Media;->recommend_list:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/miui/video/base/model/MediaData$Media;->trending_list:Ljava/util/List;

    return-object v0
.end method

.method private final convertToOVFavorVideo(Lcom/miui/video/base/model/MediaData$Media;)Lcom/miui/video/base/database/OVFavorVideoEntity;
    .locals 4

    new-instance v0, Lcom/miui/video/base/database/OVFavorVideoEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/OVFavorVideoEntity;-><init>()V

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorVideoEntity;->setUser_id(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

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

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->playlistId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "playlistId"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
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

    invoke-direct {p0, p2}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->countSelectNumber(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    const-string p2, "data[1]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->countSelectNumber(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    return-void
.end method

.method private final initIntent()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "item_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arguments!!.getString(CCodes.PARAMS_ITEM_ID, \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->itemId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "playlist_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arguments!!.getString(CC\u2026s.PARAMS_PLAYLIST_ID, \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->playlistId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v1, "source"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arguments!!.getString(CCodes.PARAMS_SOURCE, \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->source:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mDatasource:Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->itemId:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v2, "itemId"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->setItemId(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mDatasource:Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->playlistId:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v2, "playlistId"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v1}, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->setPlaylistId(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mDatasource:Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;->setSource(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private final initVideo(Lio/reactivex/Observable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/miui/video/base/common/net/model/ModelData<",
            "Lcom/miui/video/base/common/net/model/CardListEntity;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v1, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$1;->INSTANCE:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$1;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$2;

    invoke-direct {v1, v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v1, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$3;->INSTANCE:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$3;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$4;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v1, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$5;->INSTANCE:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$5;

    check-cast v1, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$6;

    invoke-direct {v1, v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$7;->INSTANCE:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$7;

    check-cast v0, Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$8;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$8;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$9;->INSTANCE:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$9;

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$10;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$10;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->toList()Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$11;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$11;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v0, Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$12;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$12;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    sget-object v1, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$13;->INSTANCE:Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$initVideo$13;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final onAutoPlayNextClick(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 4

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

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

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v2, "context!!"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-virtual {p1, p2, v1}, Lcom/miui/video/service/action/ContentActionWrapper;->doAutoPlayerAction(Landroid/content/Context;Z)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private final onAutoPlayNextQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 5

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

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

    iget-object v2, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v4, "context!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/miui/video/service/action/ContentActionWrapper;->doAutoPlayerQuery(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    if-eqz p2, :cond_6

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p2, v1, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method private final onFavorClick(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

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

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {p0, v4}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->convertToOVFavorVideo(Lcom/miui/video/base/model/MediaData$Media;)Lcom/miui/video/base/database/OVFavorVideoEntity;

    move-result-object v4

    if-ne v1, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    new-instance v3, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onFavorClick$1;

    invoke-direct {v3, v1, p1, p2}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onFavorClick$1;-><init>(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

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

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->convertToQueryFavorBody(Lcom/miui/video/base/model/MediaData$Media;)Lcom/miui/video/base/common/data/QueryFavorBody;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onFavorQuery$1;

    invoke-direct {v2, p1, p2}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onFavorQuery$1;-><init>(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    check-cast v2, Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/action/ContentActionWrapper;->queryFavorState(Lcom/miui/video/base/common/data/QueryFavorBody;Lcom/miui/video/base/routers/personal/favor/ChangeFavorView;)V

    :cond_2
    return-void
.end method

.method private final onLikeClick(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 9

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget v0, Lcom/miui/video/biz/group/longvideo/R$id;->vo_action_id_liks_btn_click:I

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
    sget v0, Lcom/miui/video/biz/group/longvideo/R$id;->vo_action_id_disliks_btn_click:I

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

    invoke-direct {p0, p2, p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->handleActionStatus(Lcom/miui/video/common/feed/entity/FeedRowEntity;Ljava/lang/Integer;)V

    check-cast p2, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p3, v1, p2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    iget-object v3, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string p1, "context!!"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object v5, p1, Lcom/miui/video/base/model/MediaData$Media;->id:Ljava/lang/String;

    const-string p1, "mMediaData!!.id"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "video"

    new-instance p1, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onLikeClick$1;

    invoke-direct {p1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onLikeClick$1;-><init>()V

    move-object v8, p1

    check-cast v8, Lcom/miui/video/common/library/base/BaseObserver;

    invoke-virtual/range {v3 .. v8}, Lcom/miui/video/service/action/ContentActionWrapper;->doLikeAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/miui/video/common/library/base/BaseObserver;)V

    :cond_7
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method private final onLikeQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 5

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

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

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v3, "context!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->itemId:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v4, "itemId"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v2, v3}, Lcom/miui/video/service/action/ContentActionWrapper;->getLikeActionType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->handleActionStatus(Lcom/miui/video/common/feed/entity/FeedRowEntity;Ljava/lang/Integer;)V

    check-cast p1, Lcom/miui/video/framework/base/ui/BaseUIEntity;

    invoke-virtual {p2, v0, p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    :cond_3
    return-void
.end method

.method private final onShareClick(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$Media;->poster:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    iget-object v1, v1, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

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

    iget-object v4, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v4, v4, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/base/model/MediaData$Episode;

    iget-object v4, v4, Lcom/miui/video/base/model/MediaData$Episode;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->id(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v4, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v4, v4, Lcom/miui/video/base/model/MediaData$Media;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->title(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->bitmap(Landroid/graphics/Bitmap;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v4, v4, Lcom/miui/video/base/model/MediaData$Media;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->subTitle(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->imageUrl(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/blank_transition?target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->link(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    const-string v1, "long_detail_page"

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->from(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object v1, v1, Lcom/miui/video/base/model/MediaData$Media;->episodes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/model/MediaData$Episode;

    iget-object v1, v1, Lcom/miui/video/base/model/MediaData$Episode;->playlist_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->playlistId(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->build()Lcom/miui/video/service/share/data/ShareInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v1, :cond_8

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v1, v0, p1}, Lcom/miui/video/service/action/ContentActionWrapper;->doVideoShareAction(Lcom/miui/video/service/share/data/ShareInfo;Landroid/content/Context;)V

    :cond_8
    return-void
.end method

.method private final registerPresentAction()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_0

    sget v1, Lcom/miui/video/biz/group/longvideo/R$id;->vo_action_id_liks_btn_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$1;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$1;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_1

    sget v1, Lcom/miui/video/biz/group/longvideo/R$id;->vo_action_id_disliks_btn_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$2;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$2;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_2

    sget v1, Lcom/miui/video/biz/group/longvideo/R$id;->vo_action_id_share_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    new-instance v3, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$3;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$3;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_3

    sget v1, Lcom/miui/video/biz/group/longvideo/R$id;->vo_action_id_favour_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$4;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$4;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_4

    sget v1, Lcom/miui/video/biz/group/longvideo/R$id;->vo_action_id_detail_action_show:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$5;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$5;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_5

    sget v1, Lcom/miui/video/biz/group/longvideo/R$id;->vo_action_id_auto_play_next_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$6;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$6;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_6

    sget v1, Lcom/miui/video/biz/group/longvideo/R$id;->vo_action_id_auto_play_next_show:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$7;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$registerPresentAction$7;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->initIntent()V

    new-instance v0, Lcom/miui/video/service/action/ContentActionWrapper;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->REPORT_TARGET_SOURCE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/video/service/action/ContentActionWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    new-instance v0, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->itemId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "itemId"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->playlistId:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v3, "playlistId"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->source:Ljava/lang/String;

    new-instance v4, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onActivityCreated$1;

    move-object v5, p0

    check-cast v5, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;

    invoke-direct {v4, v5}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$onActivityCreated$1;-><init>(Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    new-instance v5, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$sam$io_reactivex_functions_Consumer$0;

    invoke-direct {v5, v4}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment$sam$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lio/reactivex/functions/Consumer;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/functions/Consumer;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mDatasource:Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;

    sget v0, Lcom/miui/video/biz/group/longvideo/R$id;->ui_video_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->headVideoView:Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    new-instance v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    sget v1, Lcom/miui/video/biz/group/longvideo/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->REPORT_TARGET_SOURCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->setRecyclerViewPageFlag(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    check-cast v1, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    iget-object v2, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mDatasource:Lcom/miui/video/biz/longvideo/data/LongVideoDetailDataSource;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v2, Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;

    new-instance v3, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;

    invoke-direct {v3}, Lcom/miui/video/service/common/architeture/strategy/NoneStrategy;-><init>()V

    check-cast v3, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/service/common/architeture/common/InfoStreamDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    invoke-direct {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->registerPresentAction()V

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    :cond_4
    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    check-cast v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->onAutoPlayNextQuery(Lcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/service/action/ContentActionWrapper;->release()V

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/miui/video/service/action/ContentActionWrapper;

    iput-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    iget-object v1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->headVideoView:Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/video/biz/longvideo/view/HeadVideoView;->onDestroyView()V

    :cond_1
    check-cast v0, Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->headVideoView:Lcom/miui/video/biz/longvideo/view/HeadVideoView;

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onDestory()V

    :cond_2
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onPause()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onResume()V

    :cond_0
    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseFragment;->onResume()V

    return-void
.end method

.method public refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V
    .locals 1
    .param p2    # Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "refreshType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->initIntent()V

    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iput-object v0, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mAutoPlayEntity:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    check-cast p1, Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    iput-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->vUIAutoPlayView:Lcom/miui/video/common/feed/ui/card/UICardTitleImageBar;

    iget-object p1, p0, Lcom/miui/video/biz/longvideo/fragment/LongVideoDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->refresh(ZLcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;)V

    :cond_0
    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/group/longvideo/R$layout;->fragment_long_video_detail:I

    return v0
.end method

.method public tackerPageName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "longvideo_filter"

    return-object v0
.end method
