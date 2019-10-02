.class public Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "RecommendAuthorView.java"


# instance fields
.field private btnSubscribe:Landroid/widget/ImageView;

.field private ivAvatar:Lcom/miui/video/common/library/widget/CircleImageView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/group/pgc/R$layout;->item_recommend_author:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public static synthetic lambda$setData$30(Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;Lcom/miui/video/framework/base/ui/BaseUIEntity;Landroid/view/View;)V
    .locals 0

    sget p2, Lcom/miui/video/biz/group/pgc/R$id;->vo_action_id_subscribe_author_btn_click:I

    invoke-virtual {p0, p2, p1}, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setData$31(Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;Lcom/miui/video/common/feed/entity/TinyCardEntity;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recommend_authors"

    invoke-static {p2, p1, v0}, Lcom/miui/video/base/routers/pgc/PgcUtil;->openAuthorDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->initFindViews()V

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->iv_author_avatar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/CircleImageView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->ivAvatar:Lcom/miui/video/common/library/widget/CircleImageView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->btn_subscribe_author:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->btnSubscribe:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->tv_author_name:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->tvName:Landroid/widget/TextView;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 3

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->ivAvatar:Lcom/miui/video/common/library/widget/CircleImageView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorProfile()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/group/pgc/R$drawable;->ic_user_default:I

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->btnSubscribe:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->isSubscribe()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/miui/video/biz/group/pgc/R$drawable;->ic_subscribed:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/miui/video/biz/group/pgc/R$drawable;->ic_subscribe:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->btnSubscribe:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/biz/pgc/ui/-$$Lambda$RecommendAuthorView$TgeQJLaFT1987LxNLJ3NsXgkwxw;

    invoke-direct {v1, p0, p2}, Lcom/miui/video/biz/pgc/ui/-$$Lambda$RecommendAuthorView$TgeQJLaFT1987LxNLJ3NsXgkwxw;-><init>(Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;->ivAvatar:Lcom/miui/video/common/library/widget/CircleImageView;

    new-instance v0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$RecommendAuthorView$DD7kQdEQiMfbjdsr2MMvux-Fe9I;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/pgc/ui/-$$Lambda$RecommendAuthorView$DD7kQdEQiMfbjdsr2MMvux-Fe9I;-><init>(Lcom/miui/video/biz/pgc/ui/RecommendAuthorView;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    invoke-virtual {p2, v0}, Lcom/miui/video/common/library/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
