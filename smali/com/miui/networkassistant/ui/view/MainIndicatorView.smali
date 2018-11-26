.class public Lcom/miui/networkassistant/ui/view/MainIndicatorView;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field private static final INDICATOR_COUNT:I = 0x2

.field private static final INDICATOR_ONE:I = 0x0

.field private static final INDICATOR_TWO:I = 0x1


# instance fields
.field private mIndicatorViews:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/view/MainIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/networkassistant/ui/view/MainIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->mIndicatorViews:[Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->mIndicatorViews:[Landroid/widget/TextView;

    const v0, 0x7f0a03e5

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->mIndicatorViews:[Landroid/widget/TextView;

    const v0, 0x7f0a03e6

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    return-void
.end method

.method public setIndicatorImage(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->mIndicatorViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, v1, p2, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public setMainIndicatorListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->mIndicatorViews:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->mIndicatorViews:[Landroid/widget/TextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMainIndicatorTitle(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->mIndicatorViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toggleIndicator(I)Z
    .locals 6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->mIndicatorViews:[Landroid/widget/TextView;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800ee

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->mIndicatorViews:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/view/MainIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    return v0
.end method
