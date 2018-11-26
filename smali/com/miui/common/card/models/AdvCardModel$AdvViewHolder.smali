.class public Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvCardModel"


# instance fields
.field private ivBanner1:Landroid/widget/ImageView;

.field private ivBanner2:Landroid/widget/ImageView;

.field private ivBanner3:Landroid/widget/ImageView;

.field private ivBigBanner:Landroid/widget/ImageView;

.field option:Lcom/nostra13/universalimageloader/core/n;

.field final synthetic this$0:Lcom/miui/common/card/models/AdvCardModel;

.field private viewClose:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/miui/common/card/models/AdvCardModel;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    invoke-direct {p0, p2}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    sget-object v0, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    const v0, 0x7f0a00c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->viewClose:Landroid/view/View;

    const v0, 0x7f0a0120

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    const v0, 0x7f0a0121

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner1:Landroid/widget/ImageView;

    const v0, 0x7f0a0122

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner2:Landroid/widget/ImageView;

    const v0, 0x7f0a0123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner3:Landroid/widget/ImageView;

    return-void
.end method

.method private fillNormalData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;ILcom/miui/common/card/models/AdvCardModel;Landroid/view/View$OnClickListener;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x7f0200b2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->actionButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->actionButton:Landroid/widget/Button;

    invoke-static {v0, v1, v2, p4}, Lcom/miui/common/card/models/AdvCardModel;->-wrap0(Lcom/miui/common/card/models/AdvCardModel;Landroid/content/Context;Landroid/widget/Button;Lcom/miui/common/card/models/AdvCardModel;)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->viewClose:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->viewClose:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2, v4}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->imageView:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/miui/common/customview/AdImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->imageView:Landroid/widget/ImageView;

    check-cast v1, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {v0, v1, p3, p4}, Lcom/miui/securityscan/MainActivity;->Nk(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner1:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2, v4}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner1:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/miui/common/customview/AdImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner1:Landroid/widget/ImageView;

    check-cast v1, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {v0, v1, p3, p4}, Lcom/miui/securityscan/MainActivity;->Nk(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner2:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2, v4}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner2:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/miui/common/customview/AdImageView;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner2:Landroid/widget/ImageView;

    check-cast v1, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {v0, v1, p3, p4}, Lcom/miui/securityscan/MainActivity;->Nk(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner3:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner3:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2, v4}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner3:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/miui/common/customview/AdImageView;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBanner3:Landroid/widget/ImageView;

    check-cast v1, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {v0, v1, p3, p4}, Lcom/miui/securityscan/MainActivity;->Nk(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    :cond_5
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    instance-of v0, p4, Lcom/miui/common/card/models/AdvNormalWebsiteBigPicCardModel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/miui/common/customview/AdImageView;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    check-cast v1, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {v0, v1, p3, p4}, Lcom/miui/securityscan/MainActivity;->Nk(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/card/models/AdvCardModel;)V

    :cond_6
    iget-object v0, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/miui/common/card/FillParentDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p4, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azQ:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v1, v2, v3, v0}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object v4, p2

    check-cast v4, Lcom/miui/common/card/models/AdvCardModel;

    new-instance v5, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder$1;

    invoke-direct {v5, p0, v4}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder$1;-><init>(Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;Lcom/miui/common/card/models/AdvCardModel;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "AdvCardModel"

    const-string/jumbo v1, "Chinese Ads"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->fillNormalData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;ILcom/miui/common/card/models/AdvCardModel;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setIconDisplayOption(Lcom/nostra13/universalimageloader/core/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    return-void
.end method
