.class public Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityViewHolder"


# instance fields
.field option:Lcom/nostra13/universalimageloader/core/n;

.field final synthetic this$0:Lcom/miui/common/card/models/ActivityCardModel;


# direct methods
.method public constructor <init>(Lcom/miui/common/card/models/ActivityCardModel;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->this$0:Lcom/miui/common/card/models/ActivityCardModel;

    invoke-direct {p0, p2}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    sget-object v0, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    iput-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 7

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast p2, Lcom/miui/common/card/models/ActivityCardModel;

    new-instance v2, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder$1;

    invoke-direct {v2, p0, p2}, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder$1;-><init>(Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;Lcom/miui/common/card/models/ActivityCardModel;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->-get4(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->-get4(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    :cond_0
    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->-get3(Lcom/miui/common/card/models/ActivityCardModel;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    const v6, 0x7f0200b2

    invoke-static {v3, v4, v5, v6}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->actionButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->actionButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->-get2(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->actionButton:Landroid/widget/Button;

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->-get2(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    const v2, 0x7f090059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->-get0(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->-get1(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->-get0(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result v0

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->-get1(Lcom/miui/common/card/models/ActivityCardModel;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/miui/securitycenter/utils/c;->bqF(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->actionButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance v3, Lcom/miui/common/card/FillParentDrawable;

    const v4, 0x7f020079

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p2}, Lcom/miui/common/card/models/ActivityCardModel;->-get3(Lcom/miui/common/card/models/ActivityCardModel;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v4, v5, v6, v3}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->actionButton:Landroid/widget/Button;

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->actionButton:Landroid/widget/Button;

    const v1, 0x7f0202db

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method protected setIconDisplayOption(Lcom/nostra13/universalimageloader/core/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ActivityCardModel$ActivityViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    return-void
.end method
