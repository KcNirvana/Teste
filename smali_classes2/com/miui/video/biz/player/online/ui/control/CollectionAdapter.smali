.class public Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;
.super Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;
.source "CollectionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter<",
        "Lcom/miui/video/player/service/model/VideoObject;",
        ">;"
    }
.end annotation


# instance fields
.field private mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

.field private mUIClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/BaseGroupAdapter;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$1;-><init>(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mUIClickListener:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;)Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mGroup:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    new-instance p2, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;-><init>(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$1;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/miui/video/biz/player/online/R$layout;->ui_layout_play_list_item:I

    invoke-static {v0, v1, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    sget v0, Lcom/miui/video/biz/player/online/R$id;->v_img:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$102(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/player/online/R$id;->v_img_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$202(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/player/online/R$id;->v_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;

    invoke-static {p2, v0}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$302(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;)Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;

    sget v0, Lcom/miui/video/biz/player/online/R$id;->v_subtitle:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$402(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/player/online/R$id;->v_topright_logo:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$502(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/player/online/R$id;->collection_adapter_holed_tag_1:I

    invoke-virtual {p3, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    goto :goto_0

    :cond_0
    sget p3, Lcom/miui/video/biz/player/online/R$id;->collection_adapter_holed_tag_1:I

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/model/VideoObject;

    sget v0, Lcom/miui/video/biz/player/online/R$id;->collection_adapter_holed_tag_2:I

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$100(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getImage_url()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/player/online/R$drawable;->ic_bg_wide:I

    invoke-static {v0, v1, v2}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_1

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$200(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getCurEpisodeDuration()I

    move-result v3

    invoke-static {v3}, Lcom/miui/video/common/library/utils/TimeStringUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$200(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$200(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$300(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v0}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mPresenter:Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;

    invoke-virtual {v3}, Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;->getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$300(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;->showIcon(Z)V

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$300(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$300(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/player/online/R$color;->c_blue_mediation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;->setTextColor(I)V

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$400(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/player/online/R$color;->c_blue_mediation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$300(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;->showIcon(Z)V

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$300(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$300(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/player/online/R$color;->c_white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/miui/video/biz/player/online/ui/control/UIEpisodeTitleText;->setTextColor(I)V

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$400(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/player/online/R$color;->c_white_60:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$400(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getTop_right_logo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$500(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$500(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getTop_right_logo()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/common/library/widget/glide/ImgUtils;->load(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-static {p3}, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;->access$500(Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mUIClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/player/online/ui/control/CollectionAdapter;->mUIClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
