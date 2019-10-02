.class public final Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;
.super Lcom/miui/video/service/base/BaseTabFragment;
.source "PlaylistDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/BaseTabFragment<",
        "Lcom/miui/video/common/library/base/impl/IPresenter<",
        "Lcom/miui/video/common/library/base/impl/IView;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaylistDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaylistDetailFragment.kt\ncom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment\n*L\n1#1,562:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a3\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0001\u000b\u0018\u0000 M2\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001MB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010,\u001a\u00020\u00102\u0006\u0010-\u001a\u00020.H\u0002J\u0012\u0010/\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u00020.H\u0002J\u0010\u00102\u001a\u0002032\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u00104\u001a\u00020\u000eH\u0014J\u0008\u00105\u001a\u000206H\u0016J\u0008\u00107\u001a\u000206H\u0002J\u0008\u00108\u001a\u000206H\u0016J\u0008\u00109\u001a\u000206H\u0016J\u0008\u0010:\u001a\u00020\u000eH\u0016J\u0012\u0010;\u001a\u0002062\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0016J\u0008\u0010>\u001a\u000206H\u0016J\u0008\u0010?\u001a\u000206H\u0016J\"\u0010@\u001a\u0002062\u0006\u0010A\u001a\u00020\u00082\u0006\u0010B\u001a\u00020.2\u0008\u0010C\u001a\u0004\u0018\u00010DH\u0002J\u0008\u0010E\u001a\u000206H\u0016J\u0008\u0010F\u001a\u000206H\u0002J\u0010\u0010G\u001a\u0002062\u0006\u0010H\u001a\u00020\u0008H\u0002J\u0008\u0010I\u001a\u00020\u0008H\u0014J\u0010\u0010J\u001a\u0002062\u0006\u0010H\u001a\u00020\u0008H\u0002J\u0010\u0010K\u001a\u0002062\u0006\u0010L\u001a\u00020\u000eH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;",
        "Lcom/miui/video/service/base/BaseTabFragment;",
        "Lcom/miui/video/common/library/base/impl/IPresenter;",
        "Lcom/miui/video/common/library/base/impl/IView;",
        "()V",
        "contentActionWrapper",
        "Lcom/miui/video/service/action/ContentActionWrapper;",
        "currentAttachedPosition",
        "",
        "currentPlayPosition",
        "dataListener",
        "com/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1",
        "Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;",
        "favor",
        "",
        "favorEntity",
        "Lcom/miui/video/base/database/OVFavorPlayListEntity;",
        "height",
        "isFullScreen",
        "isNoMoreData",
        "lastPlayPosition",
        "mInfoStreamPresenter",
        "Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;",
        "mLandscapePlayPosition",
        "mLayoutManager",
        "Landroid/support/v7/widget/LinearLayoutManager;",
        "mPlayer",
        "Lcom/miui/video/base/IPlayer;",
        "playlistId",
        "",
        "refreshDone",
        "resetPlayerViewRunnable",
        "Ljava/lang/Runnable;",
        "screenChange",
        "source",
        "target",
        "vFavor",
        "Landroid/widget/ImageView;",
        "vFullScreenContainer",
        "Landroid/widget/FrameLayout;",
        "vRecyclerView",
        "Landroid/support/v7/widget/RecyclerView;",
        "wrapper",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;",
        "convertToOVFavorVideo",
        "item",
        "Lcom/miui/video/common/feed/entity/FeedRowEntity;",
        "convertToOVHistoryVideo",
        "Lcom/miui/video/base/database/OVHistoryEntity;",
        "feedRowEntity",
        "convertToQueryFavorBody",
        "Lcom/miui/video/base/common/data/QueryFavorBody;",
        "hideTabView",
        "initBase",
        "",
        "initTitle",
        "initViewsEvent",
        "initViewsValue",
        "onBackPressed",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onDestroy",
        "onPause",
        "onRecommendClick",
        "actionId",
        "data",
        "viewObject",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "onResume",
        "registerPresentAction",
        "scrollToTopAndPlay",
        "position",
        "setLayoutResId",
        "startPlay",
        "switchFavor",
        "selected",
        "Companion",
        "biz_group_shortvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$Companion;

.field public static final FIRST_CARD_POSITION:I = 0x0

.field public static final FIRST_VIDEO_POSITION:I = 0x1


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private contentActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

.field private currentAttachedPosition:I

.field private currentPlayPosition:I

.field private dataListener:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

.field private favor:Z

.field private favorEntity:Lcom/miui/video/base/database/OVFavorPlayListEntity;

.field private height:I

.field private isFullScreen:Z

.field private isNoMoreData:Z

.field private lastPlayPosition:I

.field private mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

.field private mLandscapePlayPosition:I

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mPlayer:Lcom/miui/video/base/IPlayer;

.field private playlistId:Ljava/lang/String;

.field private refreshDone:Z

.field private resetPlayerViewRunnable:Ljava/lang/Runnable;

.field private screenChange:Z

.field private source:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private vFavor:Landroid/widget/ImageView;

.field private vFullScreenContainer:Landroid/widget/FrameLayout;

.field private vRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->Companion:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/service/base/BaseTabFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->playlistId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->source:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentAttachedPosition:I

    iput v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentPlayPosition:I

    iput v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->lastPlayPosition:I

    iput v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLandscapePlayPosition:I

    iput v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->height:I

    new-instance v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->dataListener:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    new-instance v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$resetPlayerViewRunnable$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->resetPlayerViewRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$convertToOVFavorVideo(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Lcom/miui/video/common/feed/entity/FeedRowEntity;)Lcom/miui/video/base/database/OVFavorPlayListEntity;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->convertToOVFavorVideo(Lcom/miui/video/common/feed/entity/FeedRowEntity;)Lcom/miui/video/base/database/OVFavorPlayListEntity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertToOVHistoryVideo(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Lcom/miui/video/common/feed/entity/FeedRowEntity;)Lcom/miui/video/base/database/OVHistoryEntity;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->convertToOVHistoryVideo(Lcom/miui/video/common/feed/entity/FeedRowEntity;)Lcom/miui/video/base/database/OVHistoryEntity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convertToQueryFavorBody(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Lcom/miui/video/base/database/OVFavorPlayListEntity;)Lcom/miui/video/base/common/data/QueryFavorBody;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->convertToQueryFavorBody(Lcom/miui/video/base/database/OVFavorPlayListEntity;)Lcom/miui/video/base/common/data/QueryFavorBody;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContentActionWrapper$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/service/action/ContentActionWrapper;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->contentActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-nez p0, :cond_0

    const-string v0, "contentActionWrapper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getCurrentAttachedPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentAttachedPosition:I

    return p0
.end method

.method public static final synthetic access$getCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentPlayPosition:I

    return p0
.end method

.method public static final synthetic access$getFavor$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->favor:Z

    return p0
.end method

.method public static final synthetic access$getFavorEntity$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/base/database/OVFavorPlayListEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->favorEntity:Lcom/miui/video/base/database/OVFavorPlayListEntity;

    return-object p0
.end method

.method public static final synthetic access$getHeight$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->height:I

    return p0
.end method

.method public static final synthetic access$getLastPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->lastPlayPosition:I

    return p0
.end method

.method public static final synthetic access$getMContext$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMLandscapePlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLandscapePlayPosition:I

    return p0
.end method

.method public static final synthetic access$getMLayoutManager$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez p0, :cond_0

    const-string v0, "mLayoutManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMPlayer$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/base/IPlayer;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mPlayer:Lcom/miui/video/base/IPlayer;

    if-nez p0, :cond_0

    const-string v0, "mPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getRefreshDone$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->refreshDone:Z

    return p0
.end method

.method public static final synthetic access$getScreenChange$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->screenChange:Z

    return p0
.end method

.method public static final synthetic access$getVFavor$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vFavor:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string v0, "vFavor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getVRecyclerView$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p0, :cond_0

    const-string v0, "vRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getWrapper$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    return-object p0
.end method

.method public static final synthetic access$isFullScreen$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->isFullScreen:Z

    return p0
.end method

.method public static final synthetic access$isNoMoreData$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->isNoMoreData:Z

    return p0
.end method

.method public static final synthetic access$onRecommendClick(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->onRecommendClick(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method

.method public static final synthetic access$scrollToTopAndPlay(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->scrollToTopAndPlay(I)V

    return-void
.end method

.method public static final synthetic access$setContentActionWrapper$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Lcom/miui/video/service/action/ContentActionWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->contentActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    return-void
.end method

.method public static final synthetic access$setCurrentAttachedPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentAttachedPosition:I

    return-void
.end method

.method public static final synthetic access$setCurrentPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentPlayPosition:I

    return-void
.end method

.method public static final synthetic access$setFavor$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->favor:Z

    return-void
.end method

.method public static final synthetic access$setFavorEntity$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Lcom/miui/video/base/database/OVFavorPlayListEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->favorEntity:Lcom/miui/video/base/database/OVFavorPlayListEntity;

    return-void
.end method

.method public static final synthetic access$setFullScreen$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->isFullScreen:Z

    return-void
.end method

.method public static final synthetic access$setHeight$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->height:I

    return-void
.end method

.method public static final synthetic access$setLastPlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->lastPlayPosition:I

    return-void
.end method

.method public static final synthetic access$setMContext$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setMLandscapePlayPosition$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLandscapePlayPosition:I

    return-void
.end method

.method public static final synthetic access$setMLayoutManager$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method public static final synthetic access$setMPlayer$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Lcom/miui/video/base/IPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mPlayer:Lcom/miui/video/base/IPlayer;

    return-void
.end method

.method public static final synthetic access$setNoMoreData$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->isNoMoreData:Z

    return-void
.end method

.method public static final synthetic access$setRefreshDone$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->refreshDone:Z

    return-void
.end method

.method public static final synthetic access$setScreenChange$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->screenChange:Z

    return-void
.end method

.method public static final synthetic access$setVFavor$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vFavor:Landroid/widget/ImageView;

    return-void
.end method

.method public static final synthetic access$setVRecyclerView$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public static final synthetic access$setWrapper$p(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    return-void
.end method

.method public static final synthetic access$startPlay(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->startPlay(I)V

    return-void
.end method

.method public static final synthetic access$switchFavor(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->switchFavor(Z)V

    return-void
.end method

.method private final convertToOVFavorVideo(Lcom/miui/video/common/feed/entity/FeedRowEntity;)Lcom/miui/video/base/database/OVFavorPlayListEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/OVFavorPlayListEntity;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    const-string v1, "item.get(0)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setUser_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setItem_type(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setPlaylist_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setImage_url(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setSub_title(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setTarget(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setSave_time(J)V

    const-string v1, "playlist_detail"

    iput-object v1, v0, Lcom/miui/video/base/database/OVFavorPlayListEntity;->source:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getVideoCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setVideo_count(I)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getVideoCountText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->setVideo_count_text(Ljava/lang/String;)V

    return-object v0
.end method

.method private final convertToOVHistoryVideo(Lcom/miui/video/common/feed/entity/FeedRowEntity;)Lcom/miui/video/base/database/OVHistoryEntity;
    .locals 3

    new-instance v0, Lcom/miui/video/base/database/OVHistoryEntity;

    invoke-direct {v0}, Lcom/miui/video/base/database/OVHistoryEntity;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    const-string v1, "feedRowEntity.get(0)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setPlaylist_id(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setLandscape_poster(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setSub_title(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getVideoCountText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/base/database/OVHistoryEntity;->setVideo_count_text(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/OVHistoryEntity;->setVideo_uri(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/database/OVHistoryEntity;->setLast_play_time(J)V

    const/16 p1, 0x2710

    invoke-virtual {v0, p1}, Lcom/miui/video/base/database/OVHistoryEntity;->setOffset(I)V

    return-object v0
.end method

.method private final convertToQueryFavorBody(Lcom/miui/video/base/database/OVFavorPlayListEntity;)Lcom/miui/video/base/common/data/QueryFavorBody;
    .locals 2

    new-instance v0, Lcom/miui/video/base/common/data/QueryFavorBody;

    invoke-direct {v0}, Lcom/miui/video/base/common/data/QueryFavorBody;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getPlaylist_id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/base/common/data/QueryFavorBody;->playlist_id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/video/base/database/OVFavorPlayListEntity;->getItem_type()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/video/base/common/data/QueryFavorBody;->feed_type:Ljava/lang/String;

    return-object v0
.end method

.method private final initTitle()V
    .locals 2

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_title_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/UICommonTitleBar;

    sget v1, Lcom/miui/video/biz/shortvideo/R$string;->playlist_title:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->setTitle(I)V

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_title_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/UICommonTitleBar;

    new-instance v1, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initTitle$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initTitle$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->setOnClickBack(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_title_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/UICommonTitleBar;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->getRightImgAction()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vFavor:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vFavor:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "vFavor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/miui/video/biz/shortvideo/R$drawable;->ic_favorite:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vFavor:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const-string v1, "vFavor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initTitle$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initTitle$2;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final onRecommendClick(ILcom/miui/video/common/feed/entity/FeedRowEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 7

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mPlayer:Lcom/miui/video/base/IPlayer;

    if-nez p1, :cond_0

    const-string p3, "mPlayer"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x0

    invoke-interface {p1, p3}, Lcom/miui/video/base/IPlayer;->setAttachMode(Z)V

    invoke-virtual {p2, p3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mContext:Landroid/content/Context;

    const-string p2, "tinyCardEntity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    return-void
.end method

.method private final registerPresentAction()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->vo_action_id_playlist_recommend_btn_click:I

    const-class v2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    new-instance v3, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$registerPresentAction$1;

    invoke-direct {v3, p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$registerPresentAction$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)V

    check-cast v3, Lcom/miui/video/common/feed/architeture/action/ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->registerActionDelegate(ILjava/lang/Class;Lcom/miui/video/common/feed/architeture/action/ActionListener;)V

    return-void
.end method

.method private final scrollToTopAndPlay(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_5

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_8

    const-string v1, "vRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->startPlay(I)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_a

    const-string v1, "mLayoutManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentPlayPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v1, :cond_b

    const-string v2, "mLayoutManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_c

    const-string v2, "vRecyclerView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v3

    const-string v4, "DeviceUtils.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v3, v0

    sub-int/2addr v1, v3

    invoke-virtual {p1, v2, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_d
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_e

    const-string v1, "vRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    invoke-direct {p0, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->startPlay(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_f

    const-string v0, "vRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$scrollToTopAndPlay$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$scrollToTopAndPlay$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_10
    :goto_1
    return-void
.end method

.method private final startPlay(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "vRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->resetPlayerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentPlayPosition:I

    iput v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->lastPlayPosition:I

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_1

    const-string v1, "mLayoutManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->lastPlayPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->v_player_container_wrapper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    const/4 v1, -0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentPlayPosition:I

    if-eq v2, v1, :cond_5

    iget v2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentPlayPosition:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object v2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mPlayer:Lcom/miui/video/base/IPlayer;

    if-nez v2, :cond_3

    const-string v3, "mPlayer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    new-instance v3, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$startPlay$2$1;

    invoke-direct {v3, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$startPlay$2$1;-><init>(Lcom/miui/video/common/feed/entity/FeedRowEntity;)V

    check-cast v3, Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;

    invoke-interface {v2, v3}, Lcom/miui/video/base/IPlayer;->getCurrentPosition(Lcom/miui/video/base/IPlayer$GetCurrentPositionCallback;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.miui.video.common.feed.entity.FeedRowEntity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mPlayer:Lcom/miui/video/base/IPlayer;

    if-nez v0, :cond_6

    const-string v2, "mPlayer"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/miui/video/base/IPlayer;->setAttachMode(Z)V

    iput v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentAttachedPosition:I

    iput p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentPlayPosition:I

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_7

    const-string v0, "vRecyclerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->resetPlayerViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final switchFavor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vFavor:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v1, "vFavor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$switchFavor$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$switchFavor$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Z)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method protected hideTabView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initBase()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "intent_target"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->target:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "intent_item_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->playlistId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "intent_source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->source:Ljava/lang/String;

    new-instance v0, Lcom/miui/video/service/action/ContentActionWrapper;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->source:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/video/service/action/ContentActionWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->contentActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    invoke-static {}, Lcom/miui/video/biz/shortvideo/router/ServiceHolder;->getOnlinePlayerService()Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0, v1}, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;->getVideoPlayer(Landroid/support/v4/app/FragmentActivity;)Lcom/miui/video/base/IPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mPlayer:Lcom/miui/video/base/IPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mPlayer:Lcom/miui/video/base/IPlayer;

    if-nez v0, :cond_3

    const-string v1, "mPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    invoke-interface {v0, v1}, Lcom/miui/video/base/IPlayer;->setPlayerMode(Lcom/miui/video/base/IPlayer$playerMode;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mPlayer:Lcom/miui/video/base/IPlayer;

    if-nez v0, :cond_4

    const-string v1, "mPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initBase$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)V

    check-cast v1, Lcom/miui/video/base/IPlayer$IVideoStatusListener;

    invoke-interface {v0, v1}, Lcom/miui/video/base/IPlayer;->addPlayStatusListener(Lcom/miui/video/base/IPlayer$IVideoStatusListener;)V

    return-void

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v4.app.FragmentActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initViewsEvent()V
    .locals 2

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerListView;

    const-string v1, "ui_recycler_list_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerListView;->getUIRecyclerView()Lcom/miui/video/common/feed/UIRecyclerView;

    move-result-object v0

    const-string v1, "ui_recycler_list_view.uiRecyclerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const-string v1, "ui_recycler_list_view.ui\u2026yclerView.refreshableView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const-string v1, "vRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    const-string v1, "vRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsEvent$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initViewsValue()V
    .locals 7

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_video_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vFullScreenContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->initTitle()V

    new-instance v0, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    sget v1, Lcom/miui/video/biz/shortvideo/R$id;->ui_recycler_list_view:I

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/UIRecyclerListView;

    invoke-direct {v0, v1}, Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;-><init>(Lcom/miui/video/common/feed/UIRecyclerListView;)V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    new-instance v0, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->wrapper:Lcom/miui/video/service/common/architeture/common/InfoStreamViewWrapper;

    check-cast v1, Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;

    new-instance v2, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;

    iget-object v3, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->target:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v4, "target"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->dataListener:Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$dataListener$1;

    check-cast v4, Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;

    iget-object v5, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->source:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->playlistId:Ljava/lang/String;

    if-nez v6, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;-><init>(Ljava/lang/String;Lcom/miui/video/biz/shortvideo/datasource/OnDataListener;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/miui/video/service/common/architeture/strategy/OnlyLoadMoreStrategy;

    invoke-direct {v3}, Lcom/miui/video/service/common/architeture/strategy/OnlyLoadMoreStrategy;-><init>()V

    check-cast v3, Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/video/biz/shortvideo/datasource/PlaylistInfoStreamPresenter;-><init>(Lcom/miui/video/service/common/architeture/common/InfoStreamContract$View;Lcom/miui/video/biz/shortvideo/datasource/PlaylistDetailDataSource;Lcom/miui/video/service/common/architeture/strategy/AbsRefreshStrategy;)V

    check-cast v0, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_2

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory;

    new-instance v2, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsValue$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$initViewsValue$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;)V

    check-cast v2, Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;

    invoke-direct {v1, v2}, Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory;-><init>(Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;)V

    check-cast v1, Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    invoke-virtual {v0, v1}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->addUIFactory(Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->registerPresentAction()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_3

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->init()V

    return-void

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/AppUtils;->isFullScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/video/framework/utils/AppUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
    .locals 5
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/video/service/base/BaseTabFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentPlayPosition:I

    iput p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLandscapePlayPosition:I

    iput-boolean v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->isFullScreen:Z

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->currentPlayPosition:I

    iget v2, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLandscapePlayPosition:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mLandscapePlayPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->vRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_1

    const-string v2, "vRecyclerView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$onConfigurationChanged$$inlined$let$lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment$onConfigurationChanged$$inlined$let$lambda$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;Landroid/content/res/Configuration;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->isFullScreen:Z

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_3
    :goto_0
    const-string p1, "onScrollStateChanged"

    const-string v1, "screenChange"

    invoke-static {p1, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->screenChange:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onDestory()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mPlayer:Lcom/miui/video/base/IPlayer;

    if-nez v0, :cond_1

    const-string v1, "mPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lcom/miui/video/base/IPlayer;->onActivityDestroy()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mPlayer:Lcom/miui/video/base/IPlayer;

    if-nez v0, :cond_2

    const-string v1, "mPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lcom/miui/video/base/IPlayer;->releasePlayer()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->contentActionWrapper:Lcom/miui/video/service/action/ContentActionWrapper;

    if-nez v0, :cond_3

    const-string v1, "contentActionWrapper"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/miui/video/service/action/ContentActionWrapper;->release()V

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onPause()V

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/fragment/PlaylistDetailFragment;->mInfoStreamPresenter:Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;

    if-nez v0, :cond_0

    const-string v1, "mInfoStreamPresenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/video/service/common/architeture/presenter/InfoStreamPresenter;->onResume()V

    invoke-super {p0}, Lcom/miui/video/service/base/BaseTabFragment;->onResume()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/shortvideo/R$layout;->fragment_playlist_detail:I

    return v0
.end method
