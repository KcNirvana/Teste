.class public Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# static fields
.field static final TAG:Ljava/lang/String; = "FunctionViewHolder"


# instance fields
.field context:Landroid/content/Context;

.field divider:Landroid/view/View;

.field imgOption:Lcom/nostra13/universalimageloader/core/n;

.field ivBigBanner:Landroid/widget/ImageView;

.field menuFuncBinder:Lcom/miui/securityscan/cards/l;

.field option:Lcom/nostra13/universalimageloader/core/n;


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    sget-object v0, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    iput-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    sget-object v0, Lcom/miui/common/b/q;->azQ:Lcom/nostra13/universalimageloader/core/n;

    iput-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->imgOption:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    const v0, 0x7f0a00eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->divider:Landroid/view/View;

    const v0, 0x7f0a0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindData(ILjava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/miui/securityscan/cards/l;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/miui/securityscan/cards/l;

    iput-object p2, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    :cond_0
    return-void
.end method

.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 10

    const v9, 0x7f0200b2

    const v8, 0x7f020079

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object v0, p2

    check-cast v0, Lcom/miui/common/card/models/FunctionCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/FunctionCardModel;->-get0(Lcom/miui/common/card/models/FunctionCardModel;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->getOnAbsModelDisplayListener()Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->getOnAbsModelDisplayListener()Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;->onAbsModelDisplay()V

    :cond_0
    invoke-virtual {v0}, Lcom/miui/common/card/models/FunctionCardModel;->getFunction()Lcom/miui/common/card/functions/BaseFunction;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->divider:Landroid/view/View;

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/miui/common/card/models/FunctionCardModel;->-get1(Lcom/miui/common/card/models/FunctionCardModel;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->divider:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    new-instance v4, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;-><init>(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;Lcom/miui/common/card/models/FunctionCardModel;Lcom/miui/common/card/functions/BaseFunction;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$2;

    invoke-direct {v3, p0, v1, p2}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$2;-><init>(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;Lcom/miui/securityscan/model/AbsModel;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->actionButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->actionButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->tvButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/common/card/models/FunctionCardModel;->getScore()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/common/card/models/FunctionCardModel;->getScore()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/common/card/models/FunctionCardModel;->getScore()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0c004b

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->tvButton:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    invoke-virtual {v1, v9}, Lcom/miui/securityscan/cards/l;->Dp(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Lcom/miui/common/card/models/FunctionCardModel;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v3, v4, v5, v1}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    invoke-virtual {v1, v8}, Lcom/miui/securityscan/cards/l;->Dp(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_5
    invoke-virtual {v0}, Lcom/miui/common/card/models/FunctionCardModel;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_4
    return-void

    :cond_7
    iget-object v4, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v3, v1, v4, v9}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_b
    new-instance v2, Lcom/miui/common/card/FillParentDrawable;

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_c
    const-string/jumbo v3, "drawable://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    instance-of v3, v0, Lcom/miui/common/card/models/FuncTopBannerCardModel;

    if-nez v3, :cond_d

    instance-of v3, v0, Lcom/miui/common/card/models/FuncTopBannerNewCardModel;

    if-nez v3, :cond_d

    instance-of v0, v0, Lcom/miui/common/card/models/FuncTopBannerNew2CardModel;

    if-eqz v0, :cond_e

    :cond_d
    :try_start_0
    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    const-string/jumbo v2, "drawable://"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FunctionViewHolder"

    const-string/jumbo v2, "the big banner set a image resource failed: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->ivBigBanner:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->imgOption:Lcom/nostra13/universalimageloader/core/n;

    if-eqz v2, :cond_f

    :goto_5
    invoke-static {v1, v0, v3, v2}, Lcom/miui/common/b/q;->aJg(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_f
    new-instance v2, Lcom/miui/common/card/FillParentDrawable;

    iget-object v4, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/miui/common/card/FillParentDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_10
    move-object v1, v2

    goto/16 :goto_1
.end method

.method protected setIconDisplayOption(Lcom/nostra13/universalimageloader/core/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    return-void
.end method

.method protected setImgDisplayOption(Lcom/nostra13/universalimageloader/core/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->imgOption:Lcom/nostra13/universalimageloader/core/n;

    return-void
.end method
