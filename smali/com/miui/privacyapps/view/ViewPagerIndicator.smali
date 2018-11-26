.class public Lcom/miui/privacyapps/view/ViewPagerIndicator;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private bcc:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public byu(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->byw(II)V

    return-void
.end method

.method public byv(I)V
    .locals 4

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->bcc:I

    if-lt p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-ne v1, p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method public byw(II)V
    .locals 6

    const v4, 0x7f090107

    const/4 v2, -0x2

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->bcc:I

    if-gtz p2, :cond_2

    move p2, v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->removeAllViews()V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v3, v1, v0, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_4

    new-instance v4, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/privacyapps/view/ViewPagerIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lmiui/R$drawable;->screen_view_seek_point_selector:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne v2, p2, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0, v4, v3}, Lcom/miui/privacyapps/view/ViewPagerIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    if-lt p2, p1, :cond_1

    add-int/lit8 p2, p1, -0x1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_2

    :cond_4
    return-void
.end method
