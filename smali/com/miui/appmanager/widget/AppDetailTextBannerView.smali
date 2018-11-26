.class public Lcom/miui/appmanager/widget/AppDetailTextBannerView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private aRE:Landroid/widget/ImageView;

.field private aRF:Landroid/view/View;

.field private aRG:Landroid/content/res/Resources;

.field private aRH:Landroid/widget/TextView;

.field private aRI:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030026

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->aRG:Landroid/content/res/Resources;

    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->aRE:Landroid/widget/ImageView;

    const v0, 0x7f0a00c4

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->aRI:Landroid/widget/TextView;

    const v0, 0x7f0a00c6

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->aRH:Landroid/widget/TextView;

    const v0, 0x7f0a00eb

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->aRF:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public setSummary(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->aRH:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailTextBannerView;->aRI:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
