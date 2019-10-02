.class public final Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "ShortVideoPlayerContainer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0006\u0010\u0014\u001a\u00020\u0012J\u0010\u0010\u0015\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;",
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
        "mIPlayer",
        "Lcom/miui/video/base/IPlayer;",
        "mMediaData",
        "Lcom/miui/video/base/model/MediaData$Media;",
        "vPlayerContain",
        "Landroid/widget/FrameLayout;",
        "initFindViews",
        "",
        "initPlayer",
        "onActivityDestroy",
        "play",
        "mediaData",
        "playEpisode",
        "episode",
        "Lcom/miui/video/base/model/MediaData$Episode;",
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

.field private mIPlayer:Lcom/miui/video/base/IPlayer;

.field private mMediaData:Lcom/miui/video/base/model/MediaData$Media;

.field private vPlayerContain:Landroid/widget/FrameLayout;


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

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

.method private final initPlayer()V
    .locals 3

    const-class v0, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;

    invoke-static {v0}, Lio/github/prototypez/appjoint/AppJoint;->service(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-interface {v0, v1}, Lcom/miui/video/base/routers/onlineplayer/OnlinePlayerService;->getVideoPlayer(Landroid/support/v4/app/FragmentActivity;)Lcom/miui/video/base/IPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->mIPlayer:Lcom/miui/video/base/IPlayer;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->mIPlayer:Lcom/miui/video/base/IPlayer;

    if-nez v0, :cond_0

    const-string v1, "mIPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer$initPlayer$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer$initPlayer$1;-><init>(Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;)V

    check-cast v1, Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;

    invoke-interface {v0, v1}, Lcom/miui/video/base/IPlayer;->addChangeEpisodeListener(Lcom/miui/video/base/IPlayer$ChangeEpisodeListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->mIPlayer:Lcom/miui/video/base/IPlayer;

    if-nez v0, :cond_1

    const-string v1, "mIPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->vPlayerContain:Landroid/widget/FrameLayout;

    if-nez v1, :cond_2

    const-string v2, "vPlayerContain"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0, v1}, Lcom/miui/video/base/IPlayer;->initVideoLayout(Landroid/widget/FrameLayout;)V

    return-void

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v4.app.FragmentActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public initFindViews()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/shortvideo/R$layout;->ui_short_video_player_contain:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->vView:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_player_contain:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.v_player_contain)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->vPlayerContain:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->initPlayer()V

    return-void
.end method

.method public final onActivityDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->mIPlayer:Lcom/miui/video/base/IPlayer;

    if-nez v0, :cond_0

    const-string v1, "mIPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/miui/video/base/IPlayer;->onActivityDestroy()V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->mIPlayer:Lcom/miui/video/base/IPlayer;

    if-nez v0, :cond_1

    const-string v1, "mIPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lcom/miui/video/base/IPlayer;->releasePlayer()V

    return-void
.end method

.method public final play(Lcom/miui/video/base/model/MediaData$Media;)V
    .locals 2
    .param p1    # Lcom/miui/video/base/model/MediaData$Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->mMediaData:Lcom/miui/video/base/model/MediaData$Media;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->mIPlayer:Lcom/miui/video/base/IPlayer;

    if-nez v0, :cond_0

    const-string v1, "mIPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/miui/video/base/IPlayer;->setVideos(Lcom/miui/video/base/model/MediaData$Media;)V

    iget-object p1, p0, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->mIPlayer:Lcom/miui/video/base/IPlayer;

    if-nez p1, :cond_1

    const-string v0, "mIPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/video/base/IPlayer;->play(I)Z

    return-void
.end method

.method public final playEpisode(Lcom/miui/video/base/model/MediaData$Episode;)V
    .locals 8
    .param p1    # Lcom/miui/video/base/model/MediaData$Episode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "episode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/detail/ui/ShortVideoPlayerContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/miui/video/base/model/MediaData$Episode;->target:Ljava/lang/String;

    iget-object v4, p1, Lcom/miui/video/base/model/MediaData$Episode;->targetAddition:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    return-void
.end method
