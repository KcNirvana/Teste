.class public Lcom/miui/appmanager/widget/AppDetailBannerItemView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private aRk:Landroid/content/res/Resources;

.field private aRl:Landroid/widget/ImageView;

.field private aRm:Landroid/widget/TextView;

.field private aRn:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030029

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRk:Landroid/content/res/Resources;

    const v0, 0x7f0a00e0

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRl:Landroid/widget/ImageView;

    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRn:Landroid/widget/TextView;

    const v0, 0x7f0a00f0

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRm:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public big(Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRl:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRk:Landroid/content/res/Resources;

    const v2, 0x7f080083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRk:Landroid/content/res/Resources;

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRk:Landroid/content/res/Resources;

    const v2, 0x7f08007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRk:Landroid/content/res/Resources;

    const v2, 0x7f08007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRk:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/widget/AppDetailBannerItemView;->aRn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
