.class public Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FuncGrid6ViewHolder"


# instance fields
.field private context:Landroid/content/Context;

.field private functionView1:Landroid/view/View;

.field private functionView2:Landroid/view/View;

.field private functionViews:[Landroid/view/View;

.field private iconImageView1:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

.field private iconImageView2:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

.field private iconViews:[Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

.field private menuChangeListener:Lcom/miui/securityscan/cards/o;

.field private menuFuncBinder:Lcom/miui/securityscan/cards/l;

.field private options:Lcom/nostra13/universalimageloader/core/n;

.field private summaryTextView1:Landroid/widget/TextView;

.field private summaryTextView2:Landroid/widget/TextView;

.field private summaryTextViews:[Landroid/widget/TextView;

.field private titleTextView1:Landroid/widget/TextView;

.field private titleTextView2:Landroid/widget/TextView;

.field private titleTextViews:[Landroid/widget/TextView;

.field private viewMap:Ljava/util/Map;


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshAntiSpam(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshAppManager(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZJLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshCleanMaster(ZJLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZZJZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshNetworkAssist(ZZJZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZIZLjava/lang/String;Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshPowerCenter(ZIZLjava/lang/String;Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshSecurityScan(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const v2, 0x7f02018c

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIK(I)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIE(I)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/o;->bIF(I)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bIB(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bIC(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bID(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->initView(Landroid/view/View;)V

    new-instance v0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;

    invoke-direct {v0, p0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder$1;-><init>(Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;)V

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuChangeListener:Lcom/miui/securityscan/cards/o;

    return-void
.end method

.method private fillIconViews(Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;Lcom/miui/common/card/GridFunctionData;)V
    .locals 2

    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->isUseLocalPic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->getLocalPicResoourceId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->getCacheDrawableByResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->getIconResourceId()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->getCacheDrawableByResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->getIcon()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, p1, v1}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    goto :goto_0
.end method

.method private getCacheDrawableByResId(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    invoke-virtual {v0, p1}, Lcom/miui/securityscan/cards/l;->Dp(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getNewAntispamCount()I
    .locals 2

    invoke-static {}, Lcom/miui/antispam/db/a;->Zx()I

    move-result v0

    invoke-static {}, Lcom/miui/antispam/db/a;->Zy()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0a0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionView1:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionView1:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView1:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    const v0, 0x7f0a0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView1:Landroid/widget/TextView;

    const v0, 0x7f0a0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView1:Landroid/widget/TextView;

    const v0, 0x7f0a013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionView2:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionView2:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView2:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    const v0, 0x7f0a013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView2:Landroid/widget/TextView;

    const v0, 0x7f0a0141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView2:Landroid/widget/TextView;

    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionView1:Landroid/view/View;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionView2:Landroid/view/View;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionViews:[Landroid/view/View;

    new-array v0, v4, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView1:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextView2:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextViews:[Landroid/widget/TextView;

    new-array v0, v4, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView1:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextView2:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextViews:[Landroid/widget/TextView;

    new-array v0, v4, [Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView1:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconImageView2:Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconViews:[Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    return-void
.end method

.method private refreshAntiSpam(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    move-result-object v2

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get4(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get1(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get3(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get2(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->getNewAntispamCount()I

    move-result v7

    if-nez p1, :cond_0

    if-lez v7, :cond_0

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    const v1, 0x7f0c002d

    invoke-virtual {v4, v1, v7, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v4, 0x7f0705ef

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v0

    :goto_0
    if-eqz v1, :cond_3

    const v0, 0x7f020185

    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->getCacheDrawableByResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-direct {p0, v3, v5, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->BY:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v0}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->getResId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->BY:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v0}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Dw()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f020184

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v0}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private refreshAppManager(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    move-result-object v2

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get4(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get1(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get3(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get2(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->BZ:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->getResId()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->BZ:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v1}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Dw()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    const v0, 0x7f020255

    :goto_2
    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->getCacheDrawableByResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-direct {p0, v3, v5, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/miui/securityscan/c;->OA()I

    move-result v4

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const v0, 0x7f0c002e

    invoke-virtual {v6, v0, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v4, 0x7f07060c

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f020254

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v0}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method private refreshCleanMaster(ZJLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    move-result-object v4

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get4(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get1(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get3(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {p4}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get2(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v7, p2, v8

    if-lez v7, :cond_1

    sget-object v0, Lcom/miui/common/card/models/FuncGrid6CardModel;->RESOURCE:Landroid/content/res/Resources;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v7

    invoke-static {v7, p2, p3, v3}, Lcom/miui/common/b/a;->aGS(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    const v3, 0x7f0705f5

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/32 v0, 0x77359400

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f0705f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    const v0, 0x7f02025b

    :goto_2
    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->getCacheDrawableByResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v4, v2}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-direct {p0, v5, v6, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f0705f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/miui/common/card/models/FuncGrid6CardModel;->RESOURCE:Landroid/content/res/Resources;

    const v2, 0x7f0705f1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/miui/common/card/models/FuncGrid6CardModel;->RESOURCE:Landroid/content/res/Resources;

    const v1, 0x7f0705f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_4

    :cond_4
    const v0, 0x7f02025a

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v0}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method private refreshNetworkAssist(ZZJZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 9

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    move-result-object v3

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get4(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get1(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get3(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {p6}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get2(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const/4 v2, 0x0

    invoke-static {v0, v6, v7, v2}, Lcom/miui/common/b/a;->aGQ(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const v0, 0x7f0705e2

    invoke-virtual {v2, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v6, 0x0

    cmp-long v0, p3, v6

    if-lez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v6, 0x7f0705e4

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_5

    const v1, 0x7f020261

    :goto_1
    invoke-direct {p0, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->getCacheDrawableByResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v3, v2}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-direct {p0, v4, v5, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v6, 0x7f0705e5

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v6, 0x7f0705e3

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v6, 0x7f0705e0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v6, 0x7f0705e1

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v8, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v8

    goto :goto_0

    :cond_4
    move v8, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v8

    goto :goto_0

    :cond_5
    const v1, 0x7f020260

    goto :goto_1

    :cond_6
    invoke-virtual {v3, v1}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private refreshPowerCenter(ZIZLjava/lang/String;Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    move-result-object v4

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get4(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get1(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get3(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {p5}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get2(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, -0x1

    if-eq p2, v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v7, "%d"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v1, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v2

    const v0, 0x7f0705fd

    invoke-virtual {v1, v0, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f0705f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    :goto_0
    if-eqz v1, :cond_6

    const v0, 0x7f020267

    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->getCacheDrawableByResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v4, v2}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-direct {p0, v5, v6, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void

    :cond_0
    invoke-virtual {v6, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v6, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f0705fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v3

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v3, 0x7f0705f6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f0705f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    const v0, 0x7f020266

    goto :goto_1

    :cond_7
    invoke-virtual {v4, v0}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private refreshSecurityScan(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    .locals 12

    const/4 v0, 0x0

    const v9, 0x7f0c002b

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get0(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    move-result-object v3

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get4(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get1(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get3(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;->-get2(Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Cd:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v0}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->getResId()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Cd:Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;

    invoke-virtual {v0}, Lcom/miui/securityscan/cards/MenuFuncBinder$MenuItem;->Dw()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    if-eqz v1, :cond_8

    const v0, 0x7f02026d

    :goto_2
    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->getCacheDrawableByResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v3, v2}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-direct {p0, v4, v6, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    return-void

    :cond_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/securityscan/scanner/B;->Gl()I

    move-result v5

    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/securityscan/scanner/B;->Gk()I

    move-result v7

    if-gtz v5, :cond_3

    if-lez v7, :cond_7

    :cond_3
    if-lez v5, :cond_5

    if-lez v7, :cond_5

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v5, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, v9, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f0705dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    goto :goto_1

    :cond_5
    if-lez v5, :cond_6

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v0, v9, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    if-lez v7, :cond_4

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v1

    invoke-virtual {v0, v9, v7, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    const-string/jumbo v0, "key_latest_virus_scan_date"

    const-wide/16 v8, 0x0

    invoke-static {v0, v8, v9}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    long-to-int v0, v8

    iget-object v5, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const v1, 0x7f0c002c

    invoke-virtual {v5, v1, v0, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v1, 0x7f0705de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v1, v2

    goto/16 :goto_1

    :cond_8
    const v0, 0x7f02026c

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v3, v0}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setImageResource(I)V

    goto/16 :goto_3
.end method

.method private updateTitleAndSummary(Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .locals 2

    const v1, 0x7f08000e

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindData(ILjava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/miui/securityscan/cards/l;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/miui/securityscan/cards/l;

    iput-object p2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuChangeListener:Lcom/miui/securityscan/cards/o;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/l;->Dq(Lcom/miui/securityscan/cards/o;)V

    :cond_0
    return-void
.end method

.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 11

    const/4 v2, 0x0

    check-cast p2, Lcom/miui/common/card/models/FuncGrid6CardModel;

    invoke-virtual {p2}, Lcom/miui/common/card/models/FuncGrid6CardModel;->getGridFunctionDataList()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionViews:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionViews:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextViews:[Landroid/widget/TextView;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextViews:[Landroid/widget/TextView;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08007a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextViews:[Landroid/widget/TextView;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getSummary()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextViews:[Landroid/widget/TextView;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08007b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextViews:[Landroid/widget/TextView;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextViews:[Landroid/widget/TextView;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconViews:[Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;->setAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconViews:[Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    aget-object v6, v6, v1

    invoke-direct {p0, v6, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->fillIconViews(Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;Lcom/miui/common/card/GridFunctionData;)V

    iget-object v6, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    new-instance v7, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    iget-object v8, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->iconViews:[Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->titleTextViews:[Landroid/widget/TextView;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->summaryTextViews:[Landroid/widget/TextView;

    aget-object v10, v10, v1

    invoke-direct {v7, v8, v9, v10, v0}, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;-><init>(Lcom/miui/securityscan/ui/main/FuncGrid6ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/miui/common/card/GridFunctionData;)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->functionViews:[Landroid/view/View;

    aget-object v0, v0, v1

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/miui/securityscan/d/a;->Kv(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuChangeListener:Lcom/miui/securityscan/cards/o;

    iget-object v2, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/cards/l;->Ds(Lcom/miui/securityscan/cards/o;Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v1, v0, Lcom/miui/common/card/GridFunctionData;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v1, "enter_homepage_way"

    const-string/jumbo v4, "00001"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "track_gamebooster_enter_way"

    const-string/jumbo v4, "00001"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "app_manager_click"

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    const-string/jumbo v1, "app_manager_click_time"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/miui/appmanager/h;->blV(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/miui/securityscan/cards/l;->BN:Z

    :cond_0
    const/4 v4, 0x1

    invoke-direct {p0, v4, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshAppManager(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V

    :cond_1
    const-string/jumbo v1, "enter_way"

    const-string/jumbo v4, "com.miui.securitycenter"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_0
    sget-object v1, Lcom/miui/common/card/models/FuncGrid6CardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/miui/cleanmaster/a;->bxv(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getStatKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lcom/miui/securityscan/d/a;->Kw(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getABtest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/miui/securityscan/d/h;->LD(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v0, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;end"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kx(Landroid/content/Context;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const-string/jumbo v1, "data_config"

    invoke-static {v0, v1}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    const-string/jumbo v1, "is_homepage_operated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/b/c;->JS(Ljava/lang/String;Z)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    const-string/jumbo v1, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->viewMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->menuFuncBinder:Lcom/miui/securityscan/cards/l;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/miui/securityscan/cards/l;->BO:Z

    :cond_9
    const/4 v4, 0x1

    invoke-direct {p0, v4, v1}, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->refreshAntiSpam(ZLcom/miui/common/card/models/FuncGrid6CardModel$DisplayViewHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FuncGrid6ViewHolder"

    const-string/jumbo v2, "onClick error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_a
    :try_start_1
    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/miui/common/b/k;->aIy(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/miui/common/card/models/FuncGrid6CardModel$FuncGrid6ViewHolder;->context:Landroid/content/Context;

    const v3, 0x7f070712

    invoke-static {v1, v3}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
