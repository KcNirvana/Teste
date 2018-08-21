.class Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;
.super Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;
.source "MonthCategoryDetailLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PieChartLabelAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCategoryDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6

    const v5, 0x1b0c0184

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryColor(Landroid/content/Context;I)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    return-object v1
.end method


# virtual methods
.method protected bindCategoryItem(Landroid/view/View;DLcom/miui/payment/data/TransactionTotal$CategoryTotal;)V
    .locals 12

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->getCategory()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->getAmountCNYTotal()D

    move-result-wide v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v7

    if-lez v7, :cond_0

    div-double v4, v0, p2

    :cond_0
    const v7, 0x1b090337

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v4

    invoke-static {v7, v2, v8, v9}, Lcom/miui/payment/utils/CategoryHelper;->getPieChartLabel(Landroid/content/Context;ID)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;->getCategoryDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v6, v3, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected createCategoryItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x1b0400e4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
