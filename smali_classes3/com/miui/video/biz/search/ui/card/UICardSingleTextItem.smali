.class public Lcom/miui/video/biz/search/ui/card/UICardSingleTextItem;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UICardSingleTextItem.java"


# instance fields
.field private vUISearchKey:Lcom/miui/video/biz/search/ui/UISearchKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->ui_card_single_text_item:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public static synthetic lambda$setData$9(Lcom/miui/video/biz/search/ui/card/UICardSingleTextItem;Lcom/miui/video/common/feed/entity/TinyCardEntity;Landroid/view/View;)V
    .locals 0

    sget p2, Lcom/miui/video/biz/search/R$id;->vo_action_id_search_key_about_click:I

    invoke-virtual {p0, p2, p1}, Lcom/miui/video/biz/search/ui/card/UICardSingleTextItem;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$id;->v_ui_search_key:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/card/UICardSingleTextItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/ui/UISearchKey;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSingleTextItem;->vUISearchKey:Lcom/miui/video/biz/search/ui/UISearchKey;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 5

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/card/UICardSingleTextItem;->vUISearchKey:Lcom/miui/video/biz/search/ui/UISearchKey;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getBaseLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/search/ui/card/UICardSingleTextItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/search/R$color;->black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/miui/video/biz/search/ui/UISearchKey;->setIconTitle(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/card/UICardSingleTextItem;->vUISearchKey:Lcom/miui/video/biz/search/ui/UISearchKey;

    new-instance v0, Lcom/miui/video/biz/search/ui/card/-$$Lambda$UICardSingleTextItem$baBpY4g2XRReXKKhBv87DWmz-rY;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/biz/search/ui/card/-$$Lambda$UICardSingleTextItem$baBpY4g2XRReXKKhBv87DWmz-rY;-><init>(Lcom/miui/video/biz/search/ui/card/UICardSingleTextItem;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/search/ui/UISearchKey;->setTitleClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
