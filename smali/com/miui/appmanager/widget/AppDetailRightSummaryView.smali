.class public Lcom/miui/appmanager/widget/AppDetailRightSummaryView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private aRA:Landroid/view/View;

.field private aRB:Landroid/content/res/Resources;

.field private aRC:Landroid/widget/TextView;

.field private aRD:Landroid/widget/TextView;

.field private aRz:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRB:Landroid/content/res/Resources;

    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRz:Landroid/widget/ImageView;

    const v0, 0x7f0a00c4

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRD:Landroid/widget/TextView;

    const v0, 0x7f0a00c6

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRC:Landroid/widget/TextView;

    const v0, 0x7f0a00eb

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRA:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bis(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRC:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bit(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRA:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public biu(Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRz:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRD:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRB:Landroid/content/res/Resources;

    const v2, 0x7f080083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRB:Landroid/content/res/Resources;

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRD:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRB:Landroid/content/res/Resources;

    const v2, 0x7f08007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRC:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRB:Landroid/content/res/Resources;

    const v2, 0x7f08007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRC:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRC:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailRightSummaryView;->aRD:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
