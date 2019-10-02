.class public Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "UIHorizontalCardListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$ItemViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.miui.video.common.feed.ui.UIHorizontalCardListView"


# instance fields
.field private conditionRv:Landroid/support/v7/widget/RecyclerView;

.field protected current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

.field private currentSelected:I

.field private line_v:Landroid/view/View;

.field private mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

.field private mFilterRVAdapter:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miui/video/common/feed/entity/TinyCardEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectTitle:Ljava/lang/String;

.field private vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/common/feed/R$layout;->ui_horizintall_card_list_view:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->map:Ljava/util/HashMap;

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->selectTitle:Ljava/lang/String;

    return-void
.end method

.method private gotoCurrentEpisode()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getSelected()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoCurrentEpisode  position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->scrollToPosition(I)V

    :cond_2
    return-void
.end method

.method private initIndicator()V
    .locals 3

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->conditionRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mFilterRVAdapter:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mFilterRVAdapter:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->conditionRv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mFilterRVAdapter:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mFilterRVAdapter:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->update(Ljava/util/List;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mFilterRVAdapter:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

    new-instance v1, Lcom/miui/video/common/feed/ui/-$$Lambda$UIHorizontalCardListView$tEuM1GN4Imymic_1CFFk2IVV5d4;

    invoke-direct {v1, p0}, Lcom/miui/video/common/feed/ui/-$$Lambda$UIHorizontalCardListView$tEuM1GN4Imymic_1CFFk2IVV5d4;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->setOnItemClickListener(Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter$OnItemClickListener;)V

    return-void
.end method

.method public static synthetic lambda$initIndicator$6(Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->conditionRv:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mFilterRVAdapter:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/entity/TitleEntity;

    if-ne p3, p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/entity/TitleEntity;->setSelected(I)V

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/TitleEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->selectTitle:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/video/common/feed/entity/TitleEntity;->setSelected(I)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mFilterRVAdapter:Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/ui/condition/UIHorizontalTitleRVAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->map:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->selectTitle:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    :cond_2
    return-void
.end method

.method public static synthetic lambda$initUI$5(Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 2

    const-string p2, "videos_vertical_image"

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "videos_horizontal_image"

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    new-instance p2, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;-><init>(Landroid/content/Context;)V

    const-string p3, "videos_vertical_image"

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/miui/video/common/feed/R$dimen;->dp_155:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/miui/video/common/feed/R$dimen;->dp_264:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_1

    :cond_2
    const-string p3, "videos_horizontal_image"

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/miui/video/common/feed/R$dimen;->dp_155:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/miui/video/common/feed/R$dimen;->dp_144:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/miui/video/common/feed/R$dimen;->dp_7:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p2, v1}, Lcom/miui/video/common/feed/ui/card/UITinyTitlePlayImage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$ItemViewHolder;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$ItemViewHolder;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;Landroid/content/Context;Landroid/view/View;I)V

    return-object p3
.end method


# virtual methods
.method public initUI()V
    .locals 4

    sget v0, Lcom/miui/video/common/feed/R$id;->line_v:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->line_v:Landroid/view/View;

    sget v0, Lcom/miui/video/common/feed/R$id;->condition_rv:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->conditionRv:Landroid/support/v7/widget/RecyclerView;

    sget v0, Lcom/miui/video/common/feed/R$id;->ui_recyclerview:I

    invoke-virtual {p0, v0}, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/UIRecyclerView;

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->enableOnScrollListener(Z)V

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    new-instance v1, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$1;

    invoke-direct {v1, p0}, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView$1;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/UIRecyclerView;->setOnScrollEventListener(Lcom/miui/video/common/feed/UIRecyclerView$OnScrollEventListener;)V

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/video/common/feed/DefaultUIFactory;

    new-instance v3, Lcom/miui/video/common/feed/ui/-$$Lambda$UIHorizontalCardListView$IFTix5BCf_4gbPIpR7gf_B_lMxc;

    invoke-direct {v3, p0}, Lcom/miui/video/common/feed/ui/-$$Lambda$UIHorizontalCardListView$IFTix5BCf_4gbPIpR7gf_B_lMxc;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;)V

    invoke-direct {v2, v3}, Lcom/miui/video/common/feed/DefaultUIFactory;-><init>(Lcom/miui/video/common/feed/IUIRecyclerCreateListener;)V

    invoke-direct {v0, v1, v2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/miui/video/common/feed/recyclerview/IUIFactory;)V

    iput-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->vUIListView:Lcom/miui/video/common/feed/UIRecyclerView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/UIRecyclerView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 8

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    invoke-virtual {p0}, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->getActionDelegateFactory()Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setActionDelegateFactory(Lcom/miui/video/common/feed/architeture/action/ActionDelegateFactory;)V

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iput-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->map:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->conditionRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->line_v:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/common/feed/entity/TitleEntity;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TitleEntity;->getSelected()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TitleEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->selectTitle:Ljava/lang/String;

    iput v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->currentSelected:I

    :cond_0
    iget-object v2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TitleEntity;->getMax()I

    move-result v4

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TitleEntity;->getMin()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget v7, v7, Lcom/miui/video/common/feed/entity/TinyCardEntity;->position:I

    if-lt v7, v5, :cond_1

    if-gt v7, v4, :cond_1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/miui/video/common/feed/entity/TitleEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->selectTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getTitleList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/feed/entity/TitleEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TitleEntity;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->selectTitle:Ljava/lang/String;

    iput p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->currentSelected:I

    :cond_4
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->map:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->selectTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->initIndicator()V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->conditionRv:Landroid/support/v7/widget/RecyclerView;

    iget p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->currentSelected:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->conditionRv:Landroid/support/v7/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->line_v:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->mAdapter:Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->setData(Ljava/util/List;)Z

    :goto_2
    invoke-direct {p0}, Lcom/miui/video/common/feed/ui/UIHorizontalCardListView;->gotoCurrentEpisode()V

    :cond_6
    return-void
.end method
