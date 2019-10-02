.class public final Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardSearchResultTitleBar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;",
        "Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;",
        "context",
        "Landroid/content/Context;",
        "parent",
        "Landroid/view/ViewGroup;",
        "style",
        "",
        "(Landroid/content/Context;Landroid/view/ViewGroup;I)V",
        "mEntity",
        "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
        "titleImg",
        "Landroid/widget/ImageView;",
        "vRightImage",
        "vTitle",
        "Landroid/widget/TextView;",
        "initUI",
        "",
        "setData",
        "position",
        "baseUIEntity",
        "Lcom/miui/video/framework/base/ui/BaseUIEntity;",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field private titleImg:Landroid/widget/ImageView;

.field private vRightImage:Landroid/widget/ImageView;

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

    sget v0, Lcom/miui/video/biz/search/R$layout;->ui_card_search_result_title:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public static final synthetic access$getMEntity$p(Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;)Lcom/miui/video/common/feed/entity/TinyCardEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-object p0
.end method

.method public static final synthetic access$setMEntity$p(Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-void
.end method


# virtual methods
.method public initUI()V
    .locals 2

    sget v0, Lcom/miui/video/biz/search/R$id;->title_img_iv:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->titleImg:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/search/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/search/R$id;->title_img_iv_right:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->vRightImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->getStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->setStyle(I)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 2
    .param p2    # Lcom/miui/video/framework/base/ui/BaseUIEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "baseUIEntity"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_8

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->vTitle:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->titleImg:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->titleImg:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->mEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-nez p2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isGif()Z

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->titleImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->titleImg:Landroid/widget/ImageView;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->onDestoryViewWithImage(Landroid/view/View;)V

    :goto_2
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;->vView:Landroid/view/View;

    if-eqz p1, :cond_8

    new-instance p2, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar$setData$1;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar$setData$1;-><init>(Lcom/miui/video/biz/search/ui/card/UICardSearchResultTitleBar;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method
