.class public Lcom/miui/payment/data/TransactionTotal;
.super Ljava/lang/Object;
.source "TransactionTotal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/data/TransactionTotal$CategoryTotal;
    }
.end annotation


# static fields
.field public static TYPE_DAY_TOTAL:I

.field public static TYPE_MONTH_TOTAl:I


# instance fields
.field private amountCNYTotal:D

.field private categoryTotal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private categoryTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal$CategoryTotal;",
            ">;"
        }
    .end annotation
.end field

.field private currencyTotal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private date:J

.field private formattedAmountTotal:Ljava/lang/String;

.field private totalType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/miui/payment/data/TransactionTotal;->TYPE_DAY_TOTAL:I

    const/4 v0, 0x2

    sput v0, Lcom/miui/payment/data/TransactionTotal;->TYPE_MONTH_TOTAl:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createEmptyTransactionsTotal(J)Lcom/miui/payment/data/TransactionTotal;
    .locals 4

    new-instance v0, Lcom/miui/payment/data/TransactionTotal;

    invoke-direct {v0}, Lcom/miui/payment/data/TransactionTotal;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/miui/payment/data/TransactionTotal;->setDate(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/payment/data/TransactionTotal;->setAmountCNYTotal(D)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    move v2, v1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/payment/data/TransactionTotal;

    iget-wide v4, p0, Lcom/miui/payment/data/TransactionTotal;->date:J

    iget-wide v6, v0, Lcom/miui/payment/data/TransactionTotal;->date:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget v3, p0, Lcom/miui/payment/data/TransactionTotal;->totalType:I

    iget v4, v0, Lcom/miui/payment/data/TransactionTotal;->totalType:I

    if-ne v3, v4, :cond_0

    iget-wide v4, v0, Lcom/miui/payment/data/TransactionTotal;->amountCNYTotal:D

    iget-wide v6, p0, Lcom/miui/payment/data/TransactionTotal;->amountCNYTotal:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/payment/data/TransactionTotal;->formattedAmountTotal:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/payment/data/TransactionTotal;->formattedAmountTotal:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/payment/data/TransactionTotal;->formattedAmountTotal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/miui/payment/data/TransactionTotal;->currencyTotal:Ljava/util/Map;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/miui/payment/data/TransactionTotal;->currencyTotal:Ljava/util/Map;

    iget-object v4, v0, Lcom/miui/payment/data/TransactionTotal;->currencyTotal:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/miui/payment/data/TransactionTotal;->categoryTotal:Ljava/util/Map;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/miui/payment/data/TransactionTotal;->categoryTotal:Ljava/util/Map;

    iget-object v4, v0, Lcom/miui/payment/data/TransactionTotal;->categoryTotal:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    iget-object v3, p0, Lcom/miui/payment/data/TransactionTotal;->categoryTotalList:Ljava/util/List;

    if-eqz v3, :cond_9

    iget-object v1, p0, Lcom/miui/payment/data/TransactionTotal;->categoryTotalList:Ljava/util/List;

    iget-object v2, v0, Lcom/miui/payment/data/TransactionTotal;->categoryTotalList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_5
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lcom/miui/payment/data/TransactionTotal;->formattedAmountTotal:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_7
    iget-object v3, v0, Lcom/miui/payment/data/TransactionTotal;->currencyTotal:Ljava/util/Map;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_8
    iget-object v3, v0, Lcom/miui/payment/data/TransactionTotal;->categoryTotal:Ljava/util/Map;

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_9
    iget-object v3, v0, Lcom/miui/payment/data/TransactionTotal;->categoryTotalList:Ljava/util/List;

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_1
.end method

.method public getAmountCNYTotal()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionTotal;->amountCNYTotal:D

    return-wide v0
.end method

.method public getCategoryTotal()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/TransactionTotal;->categoryTotal:Ljava/util/Map;

    return-object v0
.end method

.method public getCategoryTotalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal$CategoryTotal;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/TransactionTotal;->categoryTotalList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrencyTotal()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/data/TransactionTotal;->currencyTotal:Ljava/util/Map;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/data/TransactionTotal;->date:J

    return-wide v0
.end method

.method public getFormattedAmountTotal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/data/TransactionTotal;->formattedAmountTotal:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalType()I
    .locals 1

    iget v0, p0, Lcom/miui/payment/data/TransactionTotal;->totalType:I

    return v0
.end method

.method public setAmountCNYTotal(D)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/payment/data/TransactionTotal;->amountCNYTotal:D

    invoke-static {p1, p2}, Lcom/miui/payment/utils/NumberFormatUtil;->getFormattedAmount(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/data/TransactionTotal;->formattedAmountTotal:Ljava/lang/String;

    return-void
.end method

.method public setCategoryTotal(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/payment/data/TransactionTotal;->categoryTotal:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/miui/payment/data/TransactionTotal;->categoryTotalList:Ljava/util/List;

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/miui/payment/data/TransactionTotal;->categoryTotalList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/miui/payment/data/TransactionTotal;->categoryTotalList:Ljava/util/List;

    new-instance v5, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v5, v6, v8, v9}, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;-><init>(ID)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/miui/payment/data/TransactionTotal;->categoryTotalList:Ljava/util/List;

    new-instance v3, Lcom/miui/payment/data/TransactionTotal$1;

    invoke-direct {v3, p0}, Lcom/miui/payment/data/TransactionTotal$1;-><init>(Lcom/miui/payment/data/TransactionTotal;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public setCurrencyTotal(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/payment/data/TransactionTotal;->currencyTotal:Ljava/util/Map;

    return-void
.end method

.method public setDate(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/payment/data/TransactionTotal;->date:J

    return-void
.end method

.method public setTotalType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/payment/data/TransactionTotal;->totalType:I

    return-void
.end method
