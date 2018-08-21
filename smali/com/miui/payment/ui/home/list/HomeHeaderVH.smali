.class public Lcom/miui/payment/ui/home/list/HomeHeaderVH;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HomeHeaderVH.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsMultiChoice:Z

.field private mMonthTotalAmount:Landroid/widget/TextView;

.field private mMonthTotalAmountUnit:Landroid/widget/TextView;

.field private mTodayTotalAmount:Landroid/widget/TextView;

.field private mTodayTotalAmountUnit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1b0901b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mTodayTotalAmount:Landroid/widget/TextView;

    const v0, 0x1b0901b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mTodayTotalAmountUnit:Landroid/widget/TextView;

    const v0, 0x1b0901b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mMonthTotalAmount:Landroid/widget/TextView;

    const v0, 0x1b0901b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mMonthTotalAmountUnit:Landroid/widget/TextView;

    const v0, 0x1b09031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private bindTotalViews(Lcom/miui/payment/data/TransactionTotal;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 6

    iget-object v1, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionTotal;->getAmountCNYTotal()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionTotal;->getFormattedAmountTotal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/miui/payment/utils/NumberFormatUtil;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/payment/utils/NumberFormatUtil;->getCurrencyUnit(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x1b0b02f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/miui/payment/utils/NumberFormatUtil;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/payment/utils/NumberFormatUtil;->getCurrencyUnit(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onMonthlyReportClicked()V
    .locals 3

    iget-object v2, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/payment/ui/monthly/MonthStatementActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bindMonthTotal(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mMonthTotalAmount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mMonthTotalAmountUnit:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->bindTotalViews(Lcom/miui/payment/data/TransactionTotal;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public bindTodayTotal(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mTodayTotalAmount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mTodayTotalAmountUnit:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->bindTotalViews(Lcom/miui/payment/data/TransactionTotal;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mIsMultiChoice:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->onMonthlyReportClicked()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b09031b
        :pswitch_0
    .end packed-switch
.end method

.method public setMultiChoice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mIsMultiChoice:Z

    return-void
.end method

.method public setSuitableTextSize(Lcom/miui/payment/data/TransactionTotal;Lcom/miui/payment/data/TransactionTotal;)V
    .locals 8

    const/16 v7, 0xc

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionTotal;->getFormattedAmountTotal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/miui/payment/data/TransactionTotal;->getFormattedAmountTotal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v7, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0c025a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_1
    iget-object v4, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mTodayTotalAmount:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->mMonthTotalAmount:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0c0259

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0c0258

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_1
.end method
