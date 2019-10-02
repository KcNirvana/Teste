.class public final Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardVideoDetail.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u001a\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u000cH\u0002R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;",
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
        "mShowAllDetail",
        "",
        "vArrow",
        "Landroid/view/View;",
        "vDesView",
        "Landroid/widget/TextView;",
        "vTitleView",
        "initFindViews",
        "",
        "initViewsEvent",
        "setData",
        "position",
        "baseUIEntity",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "showDetail",
        "showAll",
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
.field private mShowAllDetail:Z

.field private vArrow:Landroid/view/View;

.field private vDesView:Landroid/widget/TextView;

.field private vTitleView:Landroid/widget/TextView;


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

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_video_detail:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

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

.method public static final synthetic access$getMShowAllDetail$p(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->mShowAllDetail:Z

    return p0
.end method

.method public static final synthetic access$getVArrow$p(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;)Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vArrow:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "vArrow"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setMShowAllDetail$p(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->mShowAllDetail:Z

    return-void
.end method

.method public static final synthetic access$setVArrow$p(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vArrow:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$showDetail(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->showDetail(Z)V

    return-void
.end method

.method private final showDetail(Z)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vTitleView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string v0, "vTitleView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vDesView:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string v0, "vDesView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vTitleView:Landroid/widget/TextView;

    if-nez p1, :cond_3

    const-string v0, "vTitleView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vDesView:Landroid/widget/TextView;

    if-nez p1, :cond_4

    const-string v0, "vDesView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/common/feed/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vTitleView:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_des:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vDesView:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_arrow:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.v_arrow)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vArrow:Landroid/view/View;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vView:Landroid/view/View;

    new-instance v1, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail$initViewsEvent$1;

    invoke-direct {v1, p0}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail$initViewsEvent$1;-><init>(Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 4
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_e

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_d

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vTitleView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v2, "vTitleView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getDesc()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vDesView:Landroid/widget/TextView;

    if-nez v1, :cond_3

    const-string v2, "vDesView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vDesView:Landroid/widget/TextView;

    if-nez v0, :cond_5

    const-string v1, "vDesView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vDesView:Landroid/widget/TextView;

    if-nez v0, :cond_6

    const-string v1, "vDesView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getDesc()Ljava/lang/String;

    move-result-object v2

    :cond_7
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v0, 0x1

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v1

    if-eq v1, v0, :cond_a

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p2, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setSelected(I)V

    :cond_9
    iput-boolean p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->mShowAllDetail:Z

    :cond_a
    iget-boolean p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->mShowAllDetail:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vArrow:Landroid/view/View;

    if-nez p1, :cond_b

    const-string p2, "vArrow"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    const/4 p2, 0x0

    const/high16 v0, 0x43340000    # 180.0f

    invoke-static {p1, p2, v0}, Lcom/miui/video/common/library/utils/AnimUtils;->RotateAnimation(Landroid/view/View;FF)V

    :cond_c
    iget-boolean p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->mShowAllDetail:Z

    invoke-direct {p0, p1}, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->showDetail(Z)V

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardVideoDetail;->vView:Landroid/view/View;

    const-string p2, "vView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_3
    return-void
.end method
