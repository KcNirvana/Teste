.class public Lcom/miui/video/biz/pgc/ui/AuthorManageView;
.super Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;
.source "AuthorManageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/pgc/ui/AuthorManageView$ManagementStatus;
    }
.end annotation


# instance fields
.field private btnSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

.field private status:Lcom/miui/video/biz/pgc/ui/AuthorManageView$ManagementStatus;

.field private tvName:Landroid/widget/TextView;

.field private vAvatar:Landroid/widget/ImageView;

.field private vRedPoint:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/miui/video/biz/pgc/ui/AuthorManageView$ManagementStatus;)V
    .locals 1

    sget v0, Lcom/miui/video/biz/group/pgc/R$layout;->item_manage_author:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object p4, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->status:Lcom/miui/video/biz/pgc/ui/AuthorManageView$ManagementStatus;

    return-void
.end method

.method public static synthetic lambda$setData$28(Lcom/miui/video/biz/pgc/ui/AuthorManageView;Lcom/miui/video/framework/base/ui/BaseUIEntity;Z)V
    .locals 0

    sget p2, Lcom/miui/video/biz/group/pgc/R$id;->vo_action_id_subscribe_author_btn_click:I

    invoke-virtual {p0, p2, p1}, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->raiseAction(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setData$29(Lcom/miui/video/biz/pgc/ui/AuthorManageView;Lcom/miui/video/common/feed/entity/TinyCardEntity;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getItem_id()Ljava/lang/String;

    move-result-object p1

    const-string v0, "author_list_page"

    invoke-static {p2, p1, v0}, Lcom/miui/video/base/routers/pgc/PgcUtil;->openAuthorDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->vRedPoint:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;->initFindViews()V

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->tv_name:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->tvName:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->btn_subscribe:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/SubscribeButton;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->btnSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->iv_avatar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->vAvatar:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->iv_red_point:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->vRedPoint:Landroid/view/View;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 5

    iget-object p1, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->btnSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->status:Lcom/miui/video/biz/pgc/ui/AuthorManageView$ManagementStatus;

    invoke-interface {v0}, Lcom/miui/video/biz/pgc/ui/AuthorManageView$ManagementStatus;->isInManageStatus()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/video/common/feed/ui/SubscribeButton;->setVisibility(I)V

    instance-of p1, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz p1, :cond_3

    move-object p1, p2

    check-cast p1, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    invoke-virtual {p1, v2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->get(I)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->vAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorProfile()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/miui/video/common/feed/R$drawable;->ic_user_default:I

    invoke-static {v0, v3, v4}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->tvName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->vRedPoint:Landroid/view/View;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getRedPoint()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->btnSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

    invoke-virtual {p2}, Lcom/miui/video/framework/base/ui/BaseUIEntity;->isSubscribe()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/SubscribeButton;->updateSubscribe(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->btnSubscribe:Lcom/miui/video/common/feed/ui/SubscribeButton;

    new-instance v1, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorManageView$IebOx_PAUg4guZs93Ok492T-c6A;

    invoke-direct {v1, p0, p2}, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorManageView$IebOx_PAUg4guZs93Ok492T-c6A;-><init>(Lcom/miui/video/biz/pgc/ui/AuthorManageView;Lcom/miui/video/framework/base/ui/BaseUIEntity;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/feed/ui/SubscribeButton;->setListener(Lcom/miui/video/common/feed/ui/SubscribeButton$OnSubscribeListener;)V

    iget-object p2, p0, Lcom/miui/video/biz/pgc/ui/AuthorManageView;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorManageView$R03mibvm0ifbYhGEVA1M5zJldj4;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/biz/pgc/ui/-$$Lambda$AuthorManageView$R03mibvm0ifbYhGEVA1M5zJldj4;-><init>(Lcom/miui/video/biz/pgc/ui/AuthorManageView;Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method
