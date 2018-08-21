.class Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MonthColumnChartAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColumnChartVH"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;
    }
.end annotation


# instance fields
.field private mBarHeight:I

.field private mClickListener:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;

.field private mContext:Landroid/content/Context;

.field mLabelText:Landroid/widget/TextView;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mValueText:Landroid/widget/TextView;

.field private mValueTextMargin:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mClickListener:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;

    const v1, 0x1b09032b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x1b09032d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mLabelText:Landroid/widget/TextView;

    const v1, 0x1b09032c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mValueText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0c0176    # 1.1581E-22f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mBarHeight:I

    const v1, 0x1b0c017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mValueTextMargin:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/miui/payment/data/TransactionTotal;ZD)V
    .locals 11

    const/4 v9, 0x1

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    invoke-static {p3, p4, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionTotal;->getAmountCNYTotal()D

    move-result-wide v6

    div-double v2, v6, p3

    :goto_0
    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const-wide v4, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const-wide v2, 0x3f847ae140000000L    # 0.009999999776482582

    :cond_0
    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionTotal;->getDate()J

    move-result-wide v4

    const v6, 0x10028

    invoke-static {v1, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mLabelText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mValueText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionTotal;->getFormattedAmountTotal()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mValueText:Landroid/widget/TextView;

    iget v4, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mBarHeight:I

    int-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    iget v5, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mValueTextMargin:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v8, v8, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v9}, Landroid/widget/ProgressBar;->setSelected(Z)V

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mLabelText:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_1
    return-void

    :cond_1
    move-wide v2, v4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setSelected(Z)V

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mLabelText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mClickListener:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->mClickListener:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;

    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;->onItemClicked(I)V

    :cond_0
    return-void
.end method
