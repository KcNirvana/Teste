.class public final Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UIDoubleVideos.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u001a\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "style",
        "",
        "(Landroid/content/Context;Landroid/view/ViewGroup;I)V",
        "vImgLeft",
        "Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;",
        "vImgRight",
        "initFindViews",
        "",
        "setData",
        "position",
        "entity",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "common_feed_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private vImgLeft:Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

.field private vImgRight:Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_double_videos:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/common/feed/R$id;->v_img_left:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->vImgLeft:Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_img_right:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->vImgRight:Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->vImgLeft:Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;->setStyle(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->vImgRight:Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;->setStyle(I)V

    return-void

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.ui.card.UITinyTitleImage"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.ui.card.UITinyTitleImage"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 4
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_7

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_7

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 p1, 0x0

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p2, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setShowValue(I)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->size()I

    move-result v3

    if-le v3, v1, :cond_3

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setShowValue(I)V

    :cond_2
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->vImgRight:Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

    if-eqz p2, :cond_4

    invoke-virtual {p2, v2}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->vImgRight:Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

    if-eqz p2, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->vImgLeft:Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

    if-nez p2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v1, "ACTION_SET_VALUE"

    invoke-virtual {p2, v1, v2, v0}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/card/UIDoubleVideos;->vImgRight:Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    const-string v0, "ACTION_SET_VALUE"

    invoke-virtual {p2, v0, v2, p1}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_7
    return-void
.end method
