.class public Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;
.super Landroid/preference/Preference;
.source ""


# instance fields
.field private aGe:Ljava/lang/CharSequence;

.field private aGf:I

.field private aGg:Ljava/lang/CharSequence;

.field private aGh:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGh:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public aRP(I)V
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGf:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGf:I

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public aRQ(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGe:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGe:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->notifyChanged()V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGe:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a017a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0215

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGh:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGg:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGe:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v3, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGh:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGg:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGe:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0241

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGf:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030126

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSummary(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGg:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGg:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->notifyChanged()V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGg:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGh:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGh:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->notifyChanged()V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerUsageDetailsTitlePreference;->aGh:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0
.end method
