.class public Lcom/miui/payment/data/source/db/TotalQueryBuilder;
.super Lcom/miui/payment/data/source/db/QueryBuilder;
.source "TotalQueryBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/data/source/db/QueryBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public equalToCategory(I)Lcom/miui/payment/data/source/db/TotalQueryBuilder;
    .locals 4

    const-string/jumbo v0, "category"

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;->whereEqual(Ljava/lang/String;J)V

    return-object p0
.end method

.method public equalToCurrency(Ljava/lang/String;)Lcom/miui/payment/data/source/db/TotalQueryBuilder;
    .locals 1

    const-string/jumbo v0, "currency_code"

    invoke-virtual {p0, v0, p1}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;->whereEqual(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equalToDay(J)Lcom/miui/payment/data/source/db/TotalQueryBuilder;
    .locals 3

    invoke-static {p1, p2}, Lcom/miui/payment/utils/DateUtil;->getDaySubstituteTime(J)J

    move-result-wide v0

    const-string/jumbo v2, "date"

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;->whereEqual(Ljava/lang/String;J)V

    return-object p0
.end method

.method public equalToMonth(J)Lcom/miui/payment/data/source/db/TotalQueryBuilder;
    .locals 3

    invoke-static {p1, p2}, Lcom/miui/payment/utils/DateUtil;->getMonthSubstituteTime(J)J

    move-result-wide v0

    const-string/jumbo v2, "month_date"

    invoke-virtual {p0, v2, v0, v1}, Lcom/miui/payment/data/source/db/TotalQueryBuilder;->whereEqual(Ljava/lang/String;J)V

    return-object p0
.end method
