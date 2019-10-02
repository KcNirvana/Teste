.class public final Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardDetailAuthor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u001a\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;",
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
        "vAuthor",
        "Lcom/miui/video/common/library/widget/CircleImageView;",
        "vCount",
        "Landroid/widget/TextView;",
        "vSubscribe",
        "Lcom/miui/video/common/feed/ui/SubscribeButton;",
        "vTitle",
        "initFindViews",
        "",
        "initViewsValue",
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
.field private vAuthor:Lcom/miui/video/common/library/widget/CircleImageView;

.field private vCount:Landroid/widget/TextView;

.field private vSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

.field private vTitle:Landroid/widget/TextView;


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

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_card_detail_author:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

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


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/common/feed/R$id;->v_author:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/miui/video/common/library/widget/CircleImageView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vAuthor:Lcom/miui/video/common/library/widget/CircleImageView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_name:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_count:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vCount:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/common/feed/R$id;->v_subscribe:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/common/feed/ui/SubscribeButton;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.ui.SubscribeButton"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.library.widget.CircleImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initViewsValue()V
    .locals 0

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 7
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/16 v0, 0x8

    if-eqz p1, :cond_f

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    iget-object v1, p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vAuthor:Lcom/miui/video/common/library/widget/CircleImageView;

    if-nez v1, :cond_0

    const-string v2, "vAuthor"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, p1}, Lcom/miui/video/common/library/widget/CircleImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vAuthor:Lcom/miui/video/common/library/widget/CircleImageView;

    if-nez v1, :cond_1

    const-string v2, "vAuthor"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorProfile:Ljava/lang/String;

    sget v3, Lcom/miui/video/common/feed/R$drawable;->ic_user_default:I

    invoke-static {v1, v2, v3}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vAuthor:Lcom/miui/video/common/library/widget/CircleImageView;

    if-nez v1, :cond_3

    const-string v2, "vAuthor"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, p1}, Lcom/miui/video/common/library/widget/CircleImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vAuthor:Lcom/miui/video/common/library/widget/CircleImageView;

    if-nez v1, :cond_4

    const-string v2, "vAuthor"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/video/common/feed/R$drawable;->ic_user_default:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/video/common/library/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorName:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vTitle:Landroid/widget/TextView;

    if-nez v0, :cond_5

    const-string v1, "vTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vTitle:Landroid/widget/TextView;

    if-nez v0, :cond_6

    const-string v1, "vTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;->authorName:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vTitle:Landroid/widget/TextView;

    if-nez v1, :cond_8

    const-string v2, "vTitle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-string v0, "tinyCardEntity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubscribeCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/common/feed/R$plurals;->subscriber:I

    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    const/4 v5, 0x1

    if-lez v4, :cond_9

    const/4 v4, 0x5

    goto :goto_2

    :cond_9
    const/4 v4, 0x1

    :goto_2
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/MiStringUtils;->num2thousand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, p1

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubscribe_status()I

    move-result v1

    if-ne v1, v5, :cond_a

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    :goto_3
    iget-object v1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vCount:Landroid/widget/TextView;

    if-nez v1, :cond_b

    const-string v2, "vCount"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

    if-nez v0, :cond_c

    const-string v1, "vSubscribe"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0, v5}, Lcom/miui/video/common/feed/ui/SubscribeButton;->updateSubscribe(Z)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vCount:Landroid/widget/TextView;

    if-nez v0, :cond_d

    const-string v1, "vCount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor$setData$1;

    invoke-direct {v0, p0}, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor$setData$1;-><init>(Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

    if-nez p1, :cond_e

    const-string v0, "vSubscribe"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    new-instance v0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor$setData$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor$setData$2;-><init>(Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    check-cast v0, Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->setListener(Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;)V

    goto :goto_4

    :cond_f
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/card/UICardDetailAuthor;->vView:Landroid/view/View;

    const-string p2, "vView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method
