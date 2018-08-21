.class public Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MonthColumnChartAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_MONTH_ITEMS:I = 0x6

.field private static final MIN_WEIGHT:F = 0.01f


# instance fields
.field private mFocusPosition:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMaxMonthAmountTotal:D

.field private mMonthFocusChangedListener:Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;

.field mTransactionsTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;"
        }
    .end annotation
.end field

.field private mVHClickListener:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mMaxMonthAmountTotal:D

    new-instance v0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$1;-><init>(Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;)V

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mVHClickListener:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mMonthFocusChangedListener:Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;)Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mMonthFocusChangedListener:Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mTransactionsTotalList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mTransactionsTotalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    instance-of v1, p1, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mTransactionsTotalList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/data/TransactionTotal;

    check-cast p1, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;

    iget v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mFocusPosition:I

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-wide v2, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mMaxMonthAmountTotal:D

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;->bindData(Lcom/miui/payment/data/TransactionTotal;ZD)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x1b0400e1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mVHClickListener:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;

    invoke-direct {v1, v0, v2}, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH;-><init>(Landroid/view/View;Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter$ColumnChartVH$ColumnChartVHClickListener;)V

    return-object v1
.end method

.method public setData(IDLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mFocusPosition:I

    iput-wide p2, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mMaxMonthAmountTotal:D

    iput-object p4, p0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->mTransactionsTotalList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->notifyDataSetChanged()V

    return-void
.end method
