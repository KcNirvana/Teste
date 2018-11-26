.class public Lcom/miui/firstaidkit/a/c;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# instance fields
.field private ti:Ljava/lang/ref/WeakReference;

.field private tj:Landroid/widget/Button;

.field private tk:Landroid/widget/TextView;

.field private tl:Landroid/widget/TextView;

.field private tm:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/a/c;->ti:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Lcom/miui/firstaidkit/a/c;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a01a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/c;->tk:Landroid/widget/TextView;

    const v0, 0x7f0a00c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/c;->tm:Landroid/widget/TextView;

    const v0, 0x7f0a00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/c;->tl:Landroid/widget/TextView;

    const v0, 0x7f0a00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/firstaidkit/a/c;->tj:Landroid/widget/Button;

    return-void
.end method

.method static synthetic vg(Lcom/miui/firstaidkit/a/c;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/firstaidkit/a/c;->ti:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/firstaidkit/a/b;

    invoke-static {p2}, Lcom/miui/firstaidkit/a/b;->ve(Lcom/miui/firstaidkit/a/b;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    iget-object v1, p0, Lcom/miui/firstaidkit/a/c;->tk:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/firstaidkit/a/b;->vf(Lcom/miui/firstaidkit/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/firstaidkit/a/c;->tm:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/firstaidkit/a/c;->tl:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/firstaidkit/a/c;->tj:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getButtonTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/firstaidkit/a/c;->tj:Landroid/widget/Button;

    new-instance v2, Lcom/miui/firstaidkit/a/i;

    invoke-direct {v2, p0, v0}, Lcom/miui/firstaidkit/a/i;-><init>(Lcom/miui/firstaidkit/a/c;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
