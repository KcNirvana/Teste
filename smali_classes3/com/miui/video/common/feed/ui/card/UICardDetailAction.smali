.class public final Lcom/miui/video/common/feed/ui/card/UICardDetailAction;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardDetailAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0013H\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0018H\u0016J\u001a\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00072\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/miui/video/common/feed/ui/card/UICardDetailAction;",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "style",
        "",
        "(Landroid/content/Context;Landroid/view/ViewGroup;I)V",
        "layoutRes",
        "(Landroid/content/Context;Landroid/view/ViewGroup;II)V",
        "hadShow",
        "",
        "vFavorite",
        "Lcom/miui/video/common/feed/ui/UITab;",
        "vHateTab",
        "vLikeTab",
        "vShareTab",
        "handleCountViewText",
        "",
        "count",
        "",
        "countText",
        "initFindViews",
        "",
        "onDestroyView",
        "setData",
        "position",
        "baseUIEntity",
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
.field private hadShow:Z

.field private vFavorite:Lcom/miui/video/common/feed/ui/UITab;

.field private vHateTab:Lcom/miui/video/common/feed/ui/UITab;

.field private vLikeTab:Lcom/miui/video/common/feed/ui/UITab;

.field private vShareTab:Lcom/miui/video/common/feed/ui/UITab;


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

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_detail_action:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method private final handleCountViewText(JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p3
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/common/feed/R$id;->v_like:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/miui/video/common/feed/ui/UITab;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vLikeTab:Lcom/miui/video/common/feed/ui/UITab;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_hate:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/miui/video/common/feed/ui/UITab;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vHateTab:Lcom/miui/video/common/feed/ui/UITab;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_share:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/video/common/feed/ui/UITab;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vShareTab:Lcom/miui/video/common/feed/ui/UITab;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_favorite:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/common/feed/ui/UITab;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vFavorite:Lcom/miui/video/common/feed/ui/UITab;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.ui.UITab"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.ui.UITab"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.ui.UITab"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.ui.UITab"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->onDestroyView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->hadShow:Z

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 8
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_e

    move-object p1, p2

    check-cast p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vLikeTab:Lcom/miui/video/common/feed/ui/UITab;

    if-nez v0, :cond_0

    const-string v1, "vLikeTab"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/video/common/feed/R$drawable;->selector_ui_tab_video_like:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v3

    const-string v4, "baseUIEntity[0]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getViewCount()J

    move-result-wide v3

    invoke-virtual {p1, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v5

    const-string v6, "baseUIEntity[0]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->handleCountViewText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v3}, Lcom/miui/video/common/feed/ui/UITab;->setViews(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vLikeTab:Lcom/miui/video/common/feed/ui/UITab;

    if-nez v0, :cond_1

    const-string v1, "vLikeTab"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v1

    const-string v3, "baseUIEntity[0]"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UITab;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vLikeTab:Lcom/miui/video/common/feed/ui/UITab;

    if-nez v0, :cond_3

    const-string v1, "vLikeTab"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$1;-><init>(Lcom/miui/video/common/feed/ui/card/UICardDetailAction;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UITab;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vHateTab:Lcom/miui/video/common/feed/ui/UITab;

    if-nez v0, :cond_4

    const-string v1, "vHateTab"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/video/common/feed/R$drawable;->selector_ui_tab_video_hate:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v4

    const-string v5, "baseUIEntity[1]"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getViewCount()J

    move-result-wide v4

    invoke-virtual {p1, v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v6

    const-string v7, "baseUIEntity[1]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->handleCountViewText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v4}, Lcom/miui/video/common/feed/ui/UITab;->setViews(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vHateTab:Lcom/miui/video/common/feed/ui/UITab;

    if-nez v0, :cond_5

    const-string v1, "vHateTab"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v1

    const-string v4, "baseUIEntity[1]"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v1

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UITab;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vHateTab:Lcom/miui/video/common/feed/ui/UITab;

    if-nez v0, :cond_7

    const-string v1, "vHateTab"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$2;

    invoke-direct {v1, p0, p2}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$2;-><init>(Lcom/miui/video/common/feed/ui/card/UICardDetailAction;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UITab;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vShareTab:Lcom/miui/video/common/feed/ui/UITab;

    if-nez v0, :cond_8

    const-string v1, "vShareTab"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/video/common/feed/R$drawable;->ic_share:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->mContext:Landroid/content/Context;

    sget v5, Lcom/miui/video/common/feed/R$string;->share:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v4}, Lcom/miui/video/common/feed/ui/UITab;->setViews(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vShareTab:Lcom/miui/video/common/feed/ui/UITab;

    if-nez v0, :cond_9

    const-string v1, "vShareTab"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$3;

    invoke-direct {v1, p0, p2}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$3;-><init>(Lcom/miui/video/common/feed/ui/card/UICardDetailAction;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/UITab;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vFavorite:Lcom/miui/video/common/feed/ui/UITab;

    if-nez v0, :cond_a

    const-string v1, "vFavorite"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/video/common/feed/R$drawable;->selector_ui_tab_video_favorite:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->mContext:Landroid/content/Context;

    sget v5, Lcom/miui/video/common/feed/R$string;->favorite:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v4}, Lcom/miui/video/common/feed/ui/UITab;->setViews(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vFavorite:Lcom/miui/video/common/feed/ui/UITab;

    if-nez v0, :cond_b

    const-string v1, "vFavorite"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    const-string v1, "baseUIEntity[3]"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result p1

    if-ne p1, v3, :cond_c

    const/4 v2, 0x1

    :cond_c
    invoke-virtual {v0, v2}, Lcom/miui/video/common/feed/ui/UITab;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->vFavorite:Lcom/miui/video/common/feed/ui/UITab;

    if-nez p1, :cond_d

    const-string v0, "vFavorite"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    new-instance v0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$4;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction$setData$4;-><init>(Lcom/miui/video/common/feed/ui/card/UICardDetailAction;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/UITab;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->hadShow:Z

    if-nez p1, :cond_e

    iput-boolean v3, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->hadShow:Z

    sget p1, Lcom/miui/video/common/feed/R$id;->vo_action_id_detail_action_show:I

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/common/feed/ui/card/UICardDetailAction;->raiseAction(ILjava/lang/Object;)V

    :cond_e
    return-void
.end method
