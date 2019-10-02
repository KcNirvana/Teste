.class public Lcom/miui/video/biz/search/ui/UISearchBy;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UISearchBy.java"


# instance fields
.field private vFirst:Landroid/widget/TextView;

.field private vFirstContainer:Landroid/widget/LinearLayout;

.field private vFirstIcon:Landroid/widget/ImageView;

.field private vSecond:Landroid/widget/TextView;

.field private vSecondContainer:Landroid/widget/LinearLayout;

.field private vSecondIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic lambda$setData$4(Lcom/miui/video/biz/search/ui/UISearchBy;Lcom/miui/video/common/feed/entity/TinyCardEntity;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/video/biz/search/ui/UISearchBy;->openActivity(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "module"

    const-string v1, "search_page"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    const-string v1, "others_search_click"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_id"

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$setData$5(Lcom/miui/video/biz/search/ui/UISearchBy;Lcom/miui/video/common/feed/entity/TinyCardEntity;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/video/biz/search/ui/UISearchBy;->openActivity(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "module"

    const-string v1, "search_page"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    const-string v1, "others_search_click"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_id"

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private openActivity(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V
    .locals 7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "title"

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getMatchList()Ljava/util/List;

    move-result-object v0

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v0, "match"

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getMatchList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/search/ui/UISearchBy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTargetAddition()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->ui_search_by:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UISearchBy;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/search/R$id;->v_first_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UISearchBy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vFirstContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/biz/search/R$id;->v_first:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UISearchBy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vFirst:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/search/R$id;->v_first_icon:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UISearchBy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vFirstIcon:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/search/R$id;->v_second_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UISearchBy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vSecondContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/biz/search/R$id;->v_second:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UISearchBy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vSecond:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/search/R$id;->v_second_icon:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UISearchBy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vSecondIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 4

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vFirst:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vFirstIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vFirstIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vFirstIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vFirstContainer:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/miui/video/biz/search/ui/-$$Lambda$UISearchBy$bD7ymDvTMC7RSHsnhQ5oVgHYN3c;

    invoke-direct {v3, p0, v1}, Lcom/miui/video/biz/search/ui/-$$Lambda$UISearchBy$bD7ymDvTMC7RSHsnhQ5oVgHYN3c;-><init>(Lcom/miui/video/biz/search/ui/UISearchBy;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    invoke-virtual {p2, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vSecondContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vSecond:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vSecondIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vSecondIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vSecondIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vSecondContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/miui/video/biz/search/ui/-$$Lambda$UISearchBy$1gsYs0UssByAsOansOoiAXtVS4Y;

    invoke-direct {v0, p0, p2}, Lcom/miui/video/biz/search/ui/-$$Lambda$UISearchBy$1gsYs0UssByAsOansOoiAXtVS4Y;-><init>(Lcom/miui/video/biz/search/ui/UISearchBy;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vSecondContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "module"

    const-string v0, "search_page"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "event"

    const-string v0, "others_search_expose"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    invoke-virtual {p2, p1}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UISearchBy;->vView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method
