.class final Lcom/miui/payment/utils/SortUtils$1;
.super Ljava/lang/Object;
.source "SortUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/utils/SortUtils;->sortRecordsItemModelsByTime(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/payment/data/TransactionItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$isDescending:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/payment/utils/SortUtils$1;->val$isDescending:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/payment/data/TransactionItem;Lcom/miui/payment/data/TransactionItem;)I
    .locals 6

    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getTransactionTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/miui/payment/data/TransactionItem;->getTransactionTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iget-boolean v1, p0, Lcom/miui/payment/utils/SortUtils$1;->val$isDescending:Z

    if-eqz v1, :cond_0

    neg-int v0, v0

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/payment/data/TransactionItem;->getTransactionTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/miui/payment/data/TransactionItem;->getTransactionTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/payment/data/TransactionItem;

    check-cast p2, Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {p0, p1, p2}, Lcom/miui/payment/utils/SortUtils$1;->compare(Lcom/miui/payment/data/TransactionItem;Lcom/miui/payment/data/TransactionItem;)I

    move-result v0

    return v0
.end method
