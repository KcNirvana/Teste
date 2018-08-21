.class Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;
.super Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;
.source "MonthCategoryDetailLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BarChartAdapter"
.end annotation


# static fields
.field private static final MIN_WEIGHT:F = 0.01f


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private forceToRefreshProgressBar(Landroid/widget/ProgressBar;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private newProgressDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    const v2, 0x800003

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v1
.end method


# virtual methods
.method protected bindCategoryItem(Landroid/view/View;DLcom/miui/payment/data/TransactionTotal$CategoryTotal;)V
    .locals 16

    const v11, 0x1b090332

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    const v11, 0x1b09032e

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v11, 0x1b090330

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v11, 0x1b090331

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual/range {p4 .. p4}, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->getCategory()I

    move-result v4

    invoke-virtual/range {p4 .. p4}, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->getAmountCNYTotal()D

    move-result-wide v2

    invoke-static {v4}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryIconResId(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p4 .. p4}, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->getFormattedAmountTotal()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;->mContext:Landroid/content/Context;

    invoke-static {v11, v4}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryColor(Landroid/content/Context;I)I

    move-result v5

    const v11, 0x102000d

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;->newProgressDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v6, v11, v14}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    const-wide/16 v14, 0x0

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Double;->compare(DD)I

    move-result v11

    if-eqz v11, :cond_1

    div-double v12, v2, p2

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-lez v11, :cond_0

    const-wide v14, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double v11, v12, v14

    if-gez v11, :cond_0

    const-wide v12, 0x3f847ae140000000L    # 0.009999999776482582

    :cond_0
    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getMax()I

    move-result v11

    int-to-double v14, v11

    mul-double/2addr v14, v12

    double-to-int v11, v14

    invoke-virtual {v9, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;->forceToRefreshProgressBar(Landroid/widget/ProgressBar;)V

    :cond_1
    return-void
.end method

.method protected createCategoryItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x1b0400e2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
