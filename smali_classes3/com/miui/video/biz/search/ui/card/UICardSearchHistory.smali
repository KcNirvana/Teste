.class public Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardSearchHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/search/ui/card/UICardSearchHistory$IOnItemClickListener;
    }
.end annotation


# instance fields
.field private eClearClick:Landroid/view/View$OnClickListener;

.field private tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field private vLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->ui_card_search_history:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    new-instance p1, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory$1;-><init>(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;)V

    iput-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->eClearClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;)Lcom/miui/video/common/feed/entity/TinyCardEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->vLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic lambda$setData$7(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;Lcom/miui/video/biz/search/ui/UISearchKey;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/EntityUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/search/ui/UISearchKey;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/search/ui/UISearchKey;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/video/biz/search/ui/UISearchKey;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->vLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->vLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->vLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setData$8(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;Lcom/miui/video/biz/search/ui/UISearchKey;Landroid/view/View;)V
    .locals 0

    sget p2, Lcom/miui/video/biz/search/R$id;->vo_action_id_search_history_click:I

    invoke-virtual {p1}, Lcom/miui/video/biz/search/ui/UISearchKey;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$id;->v_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->vLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 5

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->vLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->vLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p2, Lcom/miui/video/biz/search/ui/UISearchKey;

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/miui/video/biz/search/ui/UISearchKey;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/miui/video/biz/search/R$drawable;->ic_search_history_clear_all:I

    iget-object v1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/video/biz/search/R$string;->history:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getBaseLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/search/R$color;->c_black_40:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/miui/video/biz/search/ui/UISearchKey;->setIconTitle(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->eClearClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Lcom/miui/video/biz/search/ui/UISearchKey;->setIconClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->vLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p2, Lcom/miui/video/common/feed/ui/card/UIDividerLine;

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/miui/video/common/feed/ui/card/UIDividerLine;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/search/R$dimen;->dp_10:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/search/R$dimen;->dp_10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p2, p1, v0, p1, v1}, Lcom/miui/video/common/feed/ui/card/UIDividerLine;->setPadding(IIII)V

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->vLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object p2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    new-instance p2, Lcom/miui/video/biz/search/ui/UISearchKey;

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/miui/video/biz/search/ui/UISearchKey;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/miui/video/biz/search/R$drawable;->ic_search_history_clear_single:I

    iget-object v1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getBaseLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lcom/miui/video/biz/search/ui/UISearchKey;->setIconTitle(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->tinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/video/biz/search/ui/UISearchKey;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/miui/video/biz/search/ui/card/-$$Lambda$UICardSearchHistory$IWzGZokCRXKPlgeVQhGHiq2XynA;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/biz/search/ui/card/-$$Lambda$UICardSearchHistory$IWzGZokCRXKPlgeVQhGHiq2XynA;-><init>(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;Lcom/miui/video/biz/search/ui/UISearchKey;)V

    invoke-virtual {p2, v0}, Lcom/miui/video/biz/search/ui/UISearchKey;->setIconClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/video/biz/search/ui/card/-$$Lambda$UICardSearchHistory$xqZboy55NfvEGXNB0wEj7hSvJu4;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/biz/search/ui/card/-$$Lambda$UICardSearchHistory$xqZboy55NfvEGXNB0wEj7hSvJu4;-><init>(Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;Lcom/miui/video/biz/search/ui/UISearchKey;)V

    invoke-virtual {p2, v0}, Lcom/miui/video/biz/search/ui/UISearchKey;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->vLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSearchHistory;->vLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
