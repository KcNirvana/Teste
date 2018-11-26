.class public Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# instance fields
.field private mInternationalVH:Lcom/miui/b/a;

.field private option:Lcom/nostra13/universalimageloader/core/n;

.field final synthetic this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;


# direct methods
.method public constructor <init>(Lcom/miui/common/card/models/AdvInternationalCardModel;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-direct {p0, p2}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    sget-object v0, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {p2, p1}, Lcom/miui/securityscan/cards/d;->Cy(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;)Lcom/miui/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "AdvInternationalCardModel"

    const-string/jumbo v1, "International Ads"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p2, Lcom/miui/common/card/models/AdvInternationalCardModel;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvInternationalCardModel;->getPositionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/cards/d;->CD(Ljava/lang/String;)V

    const-string/jumbo v1, "AdvInternationalCardModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "International Ads reportPV : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/AdvInternationalCardModel;->-get0(Lcom/miui/common/card/models/AdvInternationalCardModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-boolean v0, v0, Lcom/miui/b/a;->initialized:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/AdvInternationalCardModel;->-get1(Lcom/miui/common/card/models/AdvInternationalCardModel;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-virtual {v2}, Lcom/miui/common/card/models/AdvInternationalCardModel;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/securityscan/cards/d;->Cx(Lcom/miui/b/a;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->baP:Landroid/view/View;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->titleView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->baL:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-virtual {v1}, Lcom/miui/common/card/models/AdvInternationalCardModel;->getCta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->summaryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v1, v1, Lcom/miui/b/a;->baM:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    const v3, 0x7f0200b2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->baN:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/miui/common/card/FillParentDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020079

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object v0, p2

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getMultiImgUrls()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    iget-object v2, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v2, v2, Lcom/miui/b/a;->baN:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azQ:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v2, v3, v1}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v1, v1, Lcom/miui/b/a;->baL:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/securityscan/cards/d;->Cz(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v1, v1, Lcom/miui/b/a;->baO:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-static {v2}, Lcom/miui/common/card/models/AdvInternationalCardModel;->-get1(Lcom/miui/common/card/models/AdvInternationalCardModel;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->this$0:Lcom/miui/common/card/models/AdvInternationalCardModel;

    invoke-virtual {v3}, Lcom/miui/common/card/models/AdvInternationalCardModel;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/miui/securityscan/cards/d;->CE(Landroid/content/Context;Landroid/widget/RelativeLayout;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->closeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->closeView:Landroid/view/View;

    new-instance v1, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder$1;-><init>(Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->summaryView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/BaseCardModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvInternationalCardModel$InternationalAdvViewHolder;->mInternationalVH:Lcom/miui/b/a;

    iget-object v0, v0, Lcom/miui/b/a;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
