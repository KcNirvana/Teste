.class Lcom/miui/privacyapps/ui/a;
.super Landroid/support/v4/view/PagerAdapter;
.source ""


# instance fields
.field final synthetic bbh:Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/a;->bbh:Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/miui/privacyapps/ui/a;->bbh:Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bxH(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030141

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/privacyapps/ui/a;->bbh:Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;->bxI(Lcom/miui/privacyapps/ui/PrivacyAppsOperationTutorialActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/privacyapps/a;

    const v1, 0x7f0a036d

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a036e

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/privacyapps/a;->byD()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Lcom/miui/privacyapps/a;->byE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-le v1, p2, :cond_0

    :goto_0
    invoke-virtual {v0, v3, p2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    return-object v3

    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result p2

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
