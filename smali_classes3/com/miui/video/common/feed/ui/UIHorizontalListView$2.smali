.class Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;
.super Ljava/lang/Object;
.source "UIHorizontalListView.java"

# interfaces
.implements Lcom/miui/video/common/feed/IUIRecyclerCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/common/feed/ui/UIHorizontalListView;->initViewsValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateTitleCircleImageViewHolder(Landroid/content/Context;I)Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;
    .locals 3

    new-instance v0, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;

    invoke-direct {v0, p1}, Lcom/miui/video/common/feed/ui/UITinyTitleCircleImageItem;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/miui/video/common/feed/ui/-$$Lambda$UIHorizontalListView$2$w8S1AyEI-Ib4_2YxTC_WEPvOWY8;

    invoke-direct {v1, p0}, Lcom/miui/video/common/feed/ui/-$$Lambda$UIHorizontalListView$2$w8S1AyEI-Ib4_2YxTC_WEPvOWY8;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView;Landroid/content/Context;Landroid/view/View;I)V

    return-object v1
.end method

.method private generateTitleImageViewHolder(Landroid/content/Context;I)Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;
    .locals 4

    new-instance v0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-static {v1}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$100(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImage;-><init>(Landroid/content/Context;)V

    const-string v1, "horizontal_long"

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    iget-object v2, v2, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$200()I

    move-result v2

    invoke-static {}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$300()I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v1, "horizontal_wide"

    iget-object v3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    iget-object v3, v3, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$400()I

    move-result v2

    invoke-static {}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$500()I

    move-result v1

    goto :goto_0

    :cond_1
    const-string v1, "horizontal_wide_history"

    iget-object v3, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    iget-object v3, v3, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {v3}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-static {v1}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$600(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/common/feed/ui/card/UITinyTitleImageHistory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-static {v1}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$700(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/common/feed/R$dimen;->dp_100:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v1, -0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-static {v1}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$800(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/common/feed/R$dimen;->dp_10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;

    iget-object v2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;-><init>(Lcom/miui/video/common/feed/ui/UIHorizontalListView;Landroid/content/Context;Landroid/view/View;I)V

    return-object v1
.end method

.method private generateViewHolder(Ljava/lang/String;Landroid/content/Context;I)Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;
    .locals 1

    const-string v0, "horizontal_wide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "horizontal_long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "horizontal_wide_history"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "authors_horizontal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "subscribed_author_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->generateTitleCircleImageViewHolder(Landroid/content/Context;I)Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    invoke-direct {p0, p2, p3}, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->generateTitleImageViewHolder(Landroid/content/Context;I)Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$generateTitleCircleImageViewHolder$4(Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object v0, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    sget v1, Lcom/miui/video/common/feed/R$id;->vo_action_id_enter_author_detail_btn_click:I

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->raiseAction(ILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setRedPoint(I)V

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-static {p1}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$000(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateUI(Landroid/content/Context;ILandroid/view/ViewGroup;I)Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
    .locals 0

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    iget-object p2, p2, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, p4}, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->generateViewHolder(Ljava/lang/String;Landroid/content/Context;I)Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    invoke-static {p2}, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->access$000(Lcom/miui/video/common/feed/ui/UIHorizontalListView;)Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerAdapter;->getUIFactorys()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/common/feed/recyclerview/IUIFactory;

    instance-of p2, p2, Lcom/miui/video/common/feed/DefaultUIFactory;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->this$0:Lcom/miui/video/common/feed/ui/UIHorizontalListView;

    iget-object p2, p2, Lcom/miui/video/common/feed/ui/UIHorizontalListView;->current:Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getLayoutName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, p4}, Lcom/miui/video/common/feed/ui/UIHorizontalListView$2;->generateViewHolder(Ljava/lang/String;Landroid/content/Context;I)Lcom/miui/video/common/feed/ui/UIHorizontalListView$ItemViewHolder;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
