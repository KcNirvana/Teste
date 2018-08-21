.class abstract Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthCategoryDetailLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CategoryDetailListAdapter"
.end annotation


# instance fields
.field private mAmountTotal:D

.field private mCategoryTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal$CategoryTotal;",
            ">;"
        }
    .end annotation
.end field

.field mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected abstract bindCategoryItem(Landroid/view/View;DLcom/miui/payment/data/TransactionTotal$CategoryTotal;)V
.end method

.method protected abstract createCategoryItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->mCategoryTotalList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->mCategoryTotalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/miui/payment/data/TransactionTotal$CategoryTotal;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->mCategoryTotalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->getItem(I)Lcom/miui/payment/data/TransactionTotal$CategoryTotal;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    move-object v1, p2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v2, p3}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->createCategoryItemView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->getItem(I)Lcom/miui/payment/data/TransactionTotal$CategoryTotal;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->mAmountTotal:D

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->bindCategoryItem(Landroid/view/View;DLcom/miui/payment/data/TransactionTotal$CategoryTotal;)V

    return-object v1
.end method

.method public setCategoryDetailData(DLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal$CategoryTotal;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->mAmountTotal:D

    iput-object p3, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->mCategoryTotalList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;->notifyDataSetChanged()V

    return-void
.end method
