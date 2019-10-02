.class public final Lcom/miui/video/feedback/card/UICardFeedBackDetail;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardFeedBackDetail.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/feedback/card/UICardFeedBackDetail$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB+\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/miui/video/feedback/card/UICardFeedBackDetail;",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "itemType",
        "",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "style",
        "",
        "(Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;I)V",
        "vAvatar",
        "Lcom/miui/video/common/feed/ui/card/UIImageView;",
        "vAvatarReply",
        "vContent",
        "Landroid/widget/RelativeLayout;",
        "vContentReply",
        "vTitle",
        "Landroid/widget/TextView;",
        "vTitleReply",
        "initFindViews",
        "",
        "setData",
        "position",
        "entity",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "Companion",
        "biz_feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/miui/video/feedback/card/UICardFeedBackDetail$Companion;

.field public static final ISSUE:Ljava/lang/String; = "issue"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUGGESTION:Ljava/lang/String; = "suggestion"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private itemType:Ljava/lang/String;

.field private vAvatar:Lcom/miui/video/common/feed/ui/card/UIImageView;

.field private vAvatarReply:Lcom/miui/video/common/feed/ui/card/UIImageView;

.field private vContent:Landroid/widget/RelativeLayout;

.field private vContentReply:Landroid/widget/RelativeLayout;

.field private vTitle:Landroid/widget/TextView;

.field private vTitleReply:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/feedback/card/UICardFeedBackDetail$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/feedback/card/UICardFeedBackDetail$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->Companion:Lcom/miui/video/feedback/card/UICardFeedBackDetail$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
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

    const-string v0, "itemType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/miui/video/feedback/R$layout;->ui_card_feedback_detail:I

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->itemType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/feedback/R$id;->submit:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vContent:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/feedback/R$id;->reply:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vContentReply:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/feedback/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/feedback/R$id;->v_title_reply:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vTitleReply:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/feedback/R$id;->v_avatar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UIImageView;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vAvatar:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/feedback/R$id;->v_avatar_reply:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UIImageView;

    iput-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vAvatarReply:Lcom/miui/video/common/feed/ui/card/UIImageView;

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.ui.card.UIImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.miui.video.common.feed.ui.card.UIImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 3
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_c

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    const-string v0, "tinyCardEntity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getRoleType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vContent:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const-string v1, "vContent"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vContentReply:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    const-string v1, "vContentReply"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vAvatar:Lcom/miui/video/common/feed/ui/card/UIImageView;

    if-nez p1, :cond_2

    const-string v0, "vAvatar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vAvatarReply:Lcom/miui/video/common/feed/ui/card/UIImageView;

    if-nez p1, :cond_4

    const-string v0, "vAvatarReply"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    sget v0, Lcom/miui/video/feedback/R$drawable;->ic_user_default:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vTitleReply:Landroid/widget/TextView;

    if-nez p1, :cond_5

    const-string v0, "vTitleReply"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vContent:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_7

    const-string v1, "vContent"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vContentReply:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_8

    const-string v0, "vContentReply"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vAvatar:Lcom/miui/video/common/feed/ui/card/UIImageView;

    if-nez p1, :cond_9

    const-string v0, "vAvatar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->itemType:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v1, "itemType"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a
    invoke-static {v0}, Lcom/miui/video/feedback/card/UICardFeedBackDetailKt;->getResourceByType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/video/feedback/card/UICardFeedBackDetail;->vTitle:Landroid/widget/TextView;

    if-nez p1, :cond_b

    const-string v0, "vTitle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSubTitle()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_1
    return-void
.end method
