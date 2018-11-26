.class public Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NewsViewHolder"


# instance fields
.field divider:Landroid/view/View;

.field private newsCardModelOptions:Lcom/nostra13/universalimageloader/core/n;

.field final synthetic this$0:Lcom/miui/common/card/models/NewsCardModel;


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;)Lcom/nostra13/universalimageloader/core/n;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->newsCardModelOptions:Lcom/nostra13/universalimageloader/core/n;

    return-object v0
.end method

.method public constructor <init>(Lcom/miui/common/card/models/NewsCardModel;Landroid/view/View;)V
    .locals 3

    const v1, 0x7f0200b2

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->this$0:Lcom/miui/common/card/models/NewsCardModel;

    invoke-direct {p0, p2}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIB(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIC(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bIE(I)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bIF(I)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    new-instance v1, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$1;

    invoke-direct {v1, p0}, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$1;-><init>(Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bIG(Lcom/nostra13/universalimageloader/core/d/a;)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bID(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->newsCardModelOptions:Lcom/nostra13/universalimageloader/core/n;

    const v0, 0x7f0a00eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->divider:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 5

    const v4, 0x7f0200a6

    const v3, 0x7f0200a4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/NewsCardModel;

    instance-of v2, p2, Lcom/miui/common/card/models/NewsListBannerCardModel;

    if-eqz v2, :cond_a

    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->-get3(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->-get1(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->-get2(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f0200a3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->divider:Landroid/view/View;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    new-instance v0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder$2;-><init>(Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;Lcom/miui/common/card/models/NewsCardModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->-get0(Lcom/miui/common/card/models/NewsCardModel;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->newsCardModelOptions:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->-get2(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0200ab

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->-get1(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->-get1(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->-get2(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->-get2(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_7
    invoke-static {p2}, Lcom/miui/common/card/models/NewsCardModel;->-get1(Lcom/miui/common/card/models/NewsCardModel;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->divider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_a
    const v0, 0x7f0200a3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->divider:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->divider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected setIconDisplayOption(Lcom/nostra13/universalimageloader/core/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/NewsCardModel$NewsViewHolder;->newsCardModelOptions:Lcom/nostra13/universalimageloader/core/n;

    return-void
.end method
