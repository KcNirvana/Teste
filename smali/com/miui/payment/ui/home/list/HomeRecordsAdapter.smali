.class public Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;
.super Lcom/miui/payment/ui/recordlist/RecordsAdapter;
.source "HomeRecordsAdapter.java"


# instance fields
.field private mCurrentMonthTotal:Lcom/miui/payment/data/TransactionTotal;

.field private mTodayTotal:Lcom/miui/payment/data/TransactionTotal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindHeaderViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;IZ)V
    .locals 3

    instance-of v1, p1, Lcom/miui/payment/ui/home/list/HomeHeaderVH;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/payment/ui/home/list/HomeHeaderVH;

    iget-object v1, p0, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->mTodayTotal:Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {v0, v1}, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->bindTodayTotal(Lcom/miui/payment/data/TransactionTotal;)V

    iget-object v1, p0, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->mCurrentMonthTotal:Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {v0, v1}, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->bindMonthTotal(Lcom/miui/payment/data/TransactionTotal;)V

    iget-object v1, p0, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->mTodayTotal:Lcom/miui/payment/data/TransactionTotal;

    iget-object v2, p0, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->mCurrentMonthTotal:Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {v0, v1, v2}, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->setSuitableTextSize(Lcom/miui/payment/data/TransactionTotal;Lcom/miui/payment/data/TransactionTotal;)V

    invoke-virtual {v0, p3}, Lcom/miui/payment/ui/home/list/HomeHeaderVH;->setMultiChoice(Z)V

    :cond_0
    return-void
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1b0400db

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/home/list/HomeHeaderVH;

    invoke-direct {v1, v0}, Lcom/miui/payment/ui/home/list/HomeHeaderVH;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onNewCurrentMonthTotal(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->mCurrentMonthTotal:Lcom/miui/payment/data/TransactionTotal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onNewTodayTotal(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->mTodayTotal:Lcom/miui/payment/data/TransactionTotal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->notifyItemChanged(I)V

    return-void
.end method
