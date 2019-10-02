.class public final Lcom/miui/video/feedback/card/UICardFeedBackTopics;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardFeedBackTopics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/miui/video/feedback/card/UICardFeedBackTopics;",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "style",
        "",
        "(Landroid/content/Context;Landroid/view/ViewGroup;I)V",
        "vAvatar",
        "Lcom/miui/video/common/feed/ui/card/UIImageView;",
        "vContainer",
        "Landroid/widget/RelativeLayout;",
        "vRedPoint",
        "Landroid/widget/ImageView;",
        "vSubtitle",
        "Landroid/widget/TextView;",
        "vTime",
        "vTitle",
        "initFindViews",
        "",
        "setData",
        "position",
        "entity",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "biz_feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private vAvatar:Lcom/miui/video/common/feed/ui/card/UIImageView;

.field private vContainer:Landroid/widget/RelativeLayout;

.field private vRedPoint:Landroid/widget/ImageView;

.field private vSubtitle:Landroid/widget/TextView;

.field private vTime:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/miui/video/feedback/R$layout;->ui_card_feedback_topics:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public static final synthetic access$getVContainer$p(Lcom/miui/video/feedback/card/UICardFeedBackTopics;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vContainer:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_0

    const-string v0, "vContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getVRedPoint$p(Lcom/miui/video/feedback/card/UICardFeedBackTopics;)Landroid/widget/ImageView;
    .locals 1

    iget-object p0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vRedPoint:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    const-string v0, "vRedPoint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setVContainer$p(Lcom/miui/video/feedback/card/UICardFeedBackTopics;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vContainer:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static final synthetic access$setVRedPoint$p(Lcom/miui/video/feedback/card/UICardFeedBackTopics;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vRedPoint:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/feedback/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vContainer:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/feedback/R$id;->v_avatar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UIImageView;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vAvatar:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/feedback/R$id;->v_red_point:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vRedPoint:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/feedback/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/feedback/R$id;->v_subtitle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vSubtitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/feedback/R$id;->v_time:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vTime:Landroid/widget/TextView;

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

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.ui.card.UIImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 2
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_b

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    const-string v0, "tinyCardEntity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "vTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vSubtitle:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v1, "vSubtitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getGmtPublishText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vTime:Landroid/widget/TextView;

    if-nez v0, :cond_4

    const-string v1, "vTime"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getGmtPublishText()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getRedPoint()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vRedPoint:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    const-string v1, "vRedPoint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vRedPoint:Landroid/widget/ImageView;

    if-nez p1, :cond_8

    const-string v0, "vRedPoint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vAvatar:Lcom/miui/video/common/feed/ui/card/UIImageView;

    if-nez p1, :cond_9

    const-string v0, "vAvatar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_type()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/feedback/card/UICardFeedBackDetailKt;->getResourceByType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackTopics;->vContainer:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_a

    const-string v0, "vContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Lcom/miui/video/feedback/card/UICardFeedBackTopics$setData$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/feedback/card/UICardFeedBackTopics$setData$1;-><init>(Lcom/miui/video/feedback/card/UICardFeedBackTopics;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method
