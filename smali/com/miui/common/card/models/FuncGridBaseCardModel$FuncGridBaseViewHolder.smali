.class public Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FuncGrid4ViewHolder"


# instance fields
.field private cardColorfulPaddingBottom:I

.field private context:Landroid/content/Context;

.field private functionView1:Landroid/view/View;

.field private functionView2:Landroid/view/View;

.field private functionView3:Landroid/view/View;

.field private functionViews:[Landroid/view/View;

.field private iconImageView1:Landroid/widget/ImageView;

.field private iconImageView2:Landroid/widget/ImageView;

.field private iconImageView3:Landroid/widget/ImageView;

.field private iconViews:[Landroid/widget/ImageView;

.field private menuFuncBinder:Lcom/miui/securityscan/cards/l;

.field public options:Lcom/nostra13/universalimageloader/core/n;

.field private titleTextView1:Landroid/widget/TextView;

.field private titleTextView2:Landroid/widget/TextView;

.field private titleTextView3:Landroid/widget/TextView;

.field private titleViews:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bIB(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bIC(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bID(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->cardColorfulPaddingBottom:I

    invoke-virtual {p0, p1}, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->initView(Landroid/view/View;)V

    return-void
.end method

.method private fillIconViews(Landroid/widget/ImageView;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    invoke-virtual {v0, p2}, Lcom/miui/securityscan/cards/l;->Dp(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindData(ILjava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/miui/securityscan/cards/l;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/miui/securityscan/cards/l;

    iput-object p2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    :cond_0
    return-void
.end method

.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 8

    const v4, 0x7f0200a4

    const v1, 0x7f0200a6

    const/4 v2, 0x0

    check-cast p2, Lcom/miui/common/card/models/FuncGridBaseCardModel;

    invoke-virtual {p2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->getGridFunctionDataList()Ljava/util/List;

    move-result-object v3

    instance-of v0, p2, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    if-eqz v0, :cond_7

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->-get2(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->-get0(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->-get1(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0200a3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/GridFunctionData;

    iget-object v5, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionViews:[Landroid/view/View;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionViews:[Landroid/view/View;

    aget-object v5, v5, v1

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->titleViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->isUseLocalPic()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconViews:[Landroid/widget/ImageView;

    aget-object v5, v5, v1

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getLocalPicResoourceId()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->fillIconViews(Landroid/widget/ImageView;I)V

    :goto_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->-get1(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0200ab

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->-get0(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->cardColorfulPaddingBottom:I

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->-get0(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->-get1(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->cardColorfulPaddingBottom:I

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_4
    invoke-static {p2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->-get1(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_5
    invoke-static {p2}, Lcom/miui/common/card/models/FuncGridBaseCardModel;->-get0(Lcom/miui/common/card/models/FuncGridBaseCardModel;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->cardColorfulPaddingBottom:I

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getIconResourceId()I

    move-result v5

    if-eqz v5, :cond_9

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconViews:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    invoke-direct {p0, v6, v5}, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->fillIconViews(Landroid/widget/ImageView;I)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getIcon()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconViews:[Landroid/widget/ImageView;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v5, v6, v7}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionViews:[Landroid/view/View;

    aget-object v0, v0, v1

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/miui/securityscan/d/a;->Kv(Landroid/content/Context;Ljava/util/List;)V

    :cond_c
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const v0, 0x7f0a0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView1:Landroid/view/View;

    const v0, 0x7f0a0138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconImageView1:Landroid/widget/ImageView;

    const v0, 0x7f0a0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->titleTextView1:Landroid/widget/TextView;

    const v0, 0x7f0a013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView2:Landroid/view/View;

    const v0, 0x7f0a013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconImageView2:Landroid/widget/ImageView;

    const v0, 0x7f0a013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->titleTextView2:Landroid/widget/TextView;

    const v0, 0x7f0a013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView3:Landroid/view/View;

    const v0, 0x7f0a013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconImageView3:Landroid/widget/ImageView;

    const v0, 0x7f0a013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->titleTextView3:Landroid/widget/TextView;

    new-array v0, v5, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView1:Landroid/view/View;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView2:Landroid/view/View;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionView3:Landroid/view/View;

    aput-object v2, v0, v4

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionViews:[Landroid/view/View;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionViews:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->functionViews:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v5, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->titleTextView1:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->titleTextView2:Landroid/widget/TextView;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->titleTextView3:Landroid/widget/TextView;

    aput-object v2, v0, v4

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->titleViews:[Landroid/widget/TextView;

    new-array v0, v5, [Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconImageView1:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconImageView2:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconImageView3:Landroid/widget/ImageView;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->iconViews:[Landroid/widget/ImageView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/miui/common/card/GridFunctionData;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "enter_homepage_way"

    const-string/jumbo v4, "00001"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "track_gamebooster_enter_way"

    const-string/jumbo v4, "00001"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "enter_way"

    const-string/jumbo v4, "com.miui.securitycenter"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object v3, Lcom/miui/common/card/models/FuncGridBaseCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/cleanmaster/a;->bxv(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getStatKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/miui/securityscan/d/a;->Kw(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getABtest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/miui/securityscan/d/h;->LD(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kx(Landroid/content/Context;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    const-string/jumbo v1, "data_config"

    invoke-static {v0, v1}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    const-string/jumbo v1, "is_homepage_operated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/b/c;->JS(Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v3, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/common/b/k;->aIy(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->context:Landroid/content/Context;

    const v3, 0x7f070712

    invoke-static {v2, v3}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FuncGrid4ViewHolder"

    const-string/jumbo v2, "onClick error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
