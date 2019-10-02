.class public final Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardPlaylistDetail.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B+\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0014H\u0016J\u001a\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "listener",
        "Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "style",
        "",
        "(Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;Landroid/content/Context;Landroid/view/ViewGroup;I)V",
        "vIntroductionTextView",
        "Landroid/widget/TextView;",
        "vPlayerContainer",
        "Landroid/widget/FrameLayout;",
        "vPlayerContainerWrapper",
        "Landroid/widget/RelativeLayout;",
        "vTinyImg",
        "Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;",
        "initFindViews",
        "",
        "initSimpleTinyImage",
        "tinyCardEntity",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "onDestroyView",
        "setData",
        "position",
        "baseUIEntity",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
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
.field private listener:Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;

.field private vIntroductionTextView:Landroid/widget/TextView;

.field private vPlayerContainer:Landroid/widget/FrameLayout;

.field private vPlayerContainerWrapper:Landroid/widget/RelativeLayout;

.field private vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1    # Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/miui/video/biz/shortvideo/R$layout;->ui_card_playlist_detail:I

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->listener:Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;)Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->listener:Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;

    return-object p0
.end method

.method public static final synthetic access$getVPlayerContainer$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vPlayerContainer:Landroid/widget/FrameLayout;

    if-nez p0, :cond_0

    const-string v0, "vPlayerContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setListener$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->listener:Lcom/miui/video/biz/shortvideo/ui/PlaylistDetailUIFactory$PlaylistDetailCardListener;

    return-void
.end method

.method public static final synthetic access$setVPlayerContainer$p(Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vPlayerContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method private final initSimpleTinyImage(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 7

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    if-nez v0, :cond_0

    const-string v1, "vTinyImg"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    if-nez v0, :cond_1

    const-string v1, "vTinyImg"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setImage(Ljava/lang/String;)V

    :cond_2
    iget-wide v0, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    if-nez v1, :cond_3

    const-string v0, "vTinyImg"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget-wide v2, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;->duration:J

    const/16 p1, 0x3e8

    int-to-long v4, p1

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/miui/video/service/R$color;->c_white_80:I

    const/4 v5, 0x0

    sget v6, Lcom/miui/video/service/R$drawable;->ui_card_single_image_shape_bg_corners_black:I

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setRightBottomText(Ljava/lang/String;IIII)V

    :cond_4
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_tiny_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_introduction:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vIntroductionTextView:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_player_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vPlayerContainer:Landroid/widget/FrameLayout;

    sget v0, Lcom/miui/video/biz/shortvideo/R$id;->v_player_container_wrapper:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vPlayerContainerWrapper:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    if-nez v0, :cond_0

    const-string v1, "vTinyImg"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setStyle(I)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vPlayerContainerWrapper:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    const-string v1, "vPlayerContainerWrapper"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.ui.card.UISimpleTinyImage"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 3
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vPlayerContainerWrapper:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const-string v1, "vPlayerContainerWrapper"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-direct {p0, p2}, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->initSimpleTinyImage(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vIntroductionTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const-string v2, "vIntroductionTextView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vIntroductionTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v1, "vIntroductionTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vTinyImg:Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;

    if-nez v0, :cond_4

    const-string v1, "vTinyImg"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$1;-><init>(Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;ILcom/miui/video/common/feed/entity/TinyCardEntity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UISimpleTinyImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;->vIntroductionTextView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    const-string v1, "vIntroductionTextView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail$setData$2;-><init>(Lcom/miui/video/biz/shortvideo/ui/card/UICardPlaylistDetail;ILcom/miui/video/common/feed/entity/TinyCardEntity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method
