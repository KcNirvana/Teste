.class public Lcom/miui/appmanager/model/b;
.super Lcom/miui/appmanager/model/f;
.source ""


# instance fields
.field private aPI:Landroid/view/View;

.field protected aPJ:Landroid/view/View;

.field aPK:Lcom/miui/securityscan/cards/f;

.field aPL:Lcom/miui/securityscan/cards/i;

.field private aPM:Landroid/widget/TextView;

.field final synthetic aPN:Lcom/miui/appmanager/model/a;

.field protected actionButton:Landroid/widget/Button;

.field protected imageView:Landroid/widget/ImageView;

.field option:Lcom/nostra13/universalimageloader/core/n;

.field private summaryView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/model/a;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/appmanager/model/b;->aPN:Lcom/miui/appmanager/model/a;

    invoke-direct {p0, p2}, Lcom/miui/appmanager/model/f;-><init>(Landroid/view/View;)V

    sget-object v0, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    iput-object v0, p0, Lcom/miui/appmanager/model/b;->option:Lcom/nostra13/universalimageloader/core/n;

    const v0, 0x7f0a00c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/b;->aPM:Landroid/widget/TextView;

    const v0, 0x7f0a00c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/b;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0a00c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/b;->summaryView:Landroid/widget/TextView;

    const v0, 0x7f0a00c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/model/b;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a00c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/appmanager/model/b;->actionButton:Landroid/widget/Button;

    const v0, 0x7f0a00c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/b;->aPJ:Landroid/view/View;

    const v0, 0x7f0a00c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/b;->aPI:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/b;->aPL:Lcom/miui/securityscan/cards/i;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/b;->aPK:Lcom/miui/securityscan/cards/f;

    return-void
.end method

.method private bgU(Landroid/view/View;ILcom/miui/appmanager/model/a;Landroid/view/View$OnClickListener;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/miui/appmanager/model/b;->actionButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    instance-of v0, p3, Lcom/miui/appmanager/model/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/b;->aPN:Lcom/miui/appmanager/model/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/model/b;->actionButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/miui/appmanager/model/b;->aPI:Landroid/view/View;

    iget-object v5, p0, Lcom/miui/appmanager/model/b;->aPL:Lcom/miui/securityscan/cards/i;

    iget-object v6, p0, Lcom/miui/appmanager/model/b;->aPK:Lcom/miui/securityscan/cards/f;

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/miui/appmanager/model/a;->bgS(Lcom/miui/appmanager/model/a;Landroid/content/Context;Landroid/widget/Button;Landroid/view/View;Lcom/miui/appmanager/model/a;Lcom/miui/securityscan/cards/i;Lcom/miui/securityscan/cards/f;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/model/b;->actionButton:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/model/b;->aPI:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/model/b;->aPI:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/model/b;->aPM:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/appmanager/model/b;->aPM:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/miui/appmanager/model/a;->bgz()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p3}, Lcom/miui/appmanager/model/a;->bgL(Lcom/miui/appmanager/model/a;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Lcom/miui/appmanager/model/a;->bgK(Lcom/miui/appmanager/model/a;)I

    move-result v0

    if-lez v0, :cond_8

    :cond_3
    move v0, v7

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/model/b;->aPM:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p3}, Lcom/miui/appmanager/model/a;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/model/b;->titleView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/appmanager/model/b;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p3}, Lcom/miui/appmanager/model/a;->getSummary()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/model/b;->summaryView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/appmanager/model/b;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/appmanager/model/b;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    invoke-static {p3}, Lcom/miui/appmanager/model/a;->bgJ(Lcom/miui/appmanager/model/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    invoke-static {p3}, Lcom/miui/appmanager/model/a;->bgJ(Lcom/miui/appmanager/model/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/model/b;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/appmanager/model/b;->option:Lcom/nostra13/universalimageloader/core/n;

    const v3, 0x7f0200b2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v0, p0, Lcom/miui/appmanager/model/b;->imageView:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/miui/common/customview/AdImageView;

    if-eqz v0, :cond_7

    invoke-static {p3}, Lcom/miui/appmanager/model/a;->bgM(Lcom/miui/appmanager/model/a;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/AppManagerMainActivity;

    const-string/jumbo v1, "VIEW"

    invoke-virtual {v0, v1, p3}, Lcom/miui/appmanager/AppManagerMainActivity;->bnf(Ljava/lang/String;Lcom/miui/appmanager/model/a;)V

    const-string/jumbo v1, "module_show"

    invoke-static {p3}, Lcom/miui/appmanager/model/a;->bgL(Lcom/miui/appmanager/model/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p3}, Lcom/miui/appmanager/model/a;->bgI(Lcom/miui/appmanager/model/a;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/miui/appmanager/a/a;->bhU(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/miui/appmanager/model/a;->bgP(Lcom/miui/appmanager/model/a;Z)Z

    :cond_7
    return-void

    :cond_8
    const/4 v0, 0x4

    goto :goto_0

    :cond_9
    invoke-static {p3}, Lcom/miui/appmanager/model/a;->bgK(Lcom/miui/appmanager/model/a;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/appmanager/model/f;->bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V

    check-cast p2, Lcom/miui/appmanager/model/a;

    new-instance v0, Lcom/miui/appmanager/model/u;

    invoke-direct {v0, p0, p2}, Lcom/miui/appmanager/model/u;-><init>(Lcom/miui/appmanager/model/b;Lcom/miui/appmanager/model/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/miui/appmanager/model/b;->bgU(Landroid/view/View;ILcom/miui/appmanager/model/a;Landroid/view/View$OnClickListener;)V

    return-void
.end method
