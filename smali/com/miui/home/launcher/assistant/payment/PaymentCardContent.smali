.class public Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;
.super Ljava/lang/Object;
.source "PaymentCardContent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentCardContent"


# instance fields
.field private isEnabled:Z

.field private newestItemAmount:Ljava/lang/String;

.field private newestItemCategoryIcon:[B

.field private newestItemComment:Ljava/lang/String;

.field private newestItemCurrencyCode:Ljava/lang/String;

.field private newestItemHumanTime:Ljava/lang/String;

.field private newestItemMethod:Ljava/lang/String;

.field private newestItemTime:J

.field private totalMonth:Ljava/lang/String;

.field private totalToday:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBlobValue(Landroid/database/Cursor;Ljava/lang/String;)[B
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static getCardContent(Landroid/database/Cursor;)Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;
    .locals 6

    const/4 v2, 0x1

    new-instance v0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    invoke-direct {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;-><init>()V

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "payment_enabled"

    invoke-static {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v3, "total_today"

    invoke-static {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->setTotalToday(Ljava/lang/String;)V

    const-string/jumbo v3, "total_current_month"

    invoke-static {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->setTotalMonth(Ljava/lang/String;)V

    const-string/jumbo v3, "newest_item_amount"

    invoke-static {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->setNewestItemAmount(Ljava/lang/String;)V

    const-string/jumbo v3, "newest_item_currency_code"

    invoke-static {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->setNewestItemCurrencyCode(Ljava/lang/String;)V

    const-string/jumbo v3, "newest_item_time"

    invoke-static {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getLongValue(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->setNewestItemTime(J)V

    const-string/jumbo v3, "newest_item_comment"

    invoke-static {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->setNewestItemComment(Ljava/lang/String;)V

    const-string/jumbo v3, "newest_item_method"

    invoke-static {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->setNewestItemMethod(Ljava/lang/String;)V

    const-string/jumbo v3, "newest_item_category_icon"

    invoke-static {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getBlobValue(Landroid/database/Cursor;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->setNewestItemCategoryIcon([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "PaymentCardContent"

    const-string/jumbo v4, "parse payment card error"

    invoke-static {v3, v4, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method private static getIntValue(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method private static getLongValue(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 4

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method private static getStringValue(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getNewestItemAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getNewestItemCategoryIcon()[B
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemCategoryIcon:[B

    return-object v0
.end method

.method public getNewestItemComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemComment:Ljava/lang/String;

    return-object v0
.end method

.method public getNewestItemCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNewestItemHumanTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemHumanTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNewestItemMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getNewestItemTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemTime:J

    return-wide v0
.end method

.method public getTotalMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->totalMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalToday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->totalToday:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->isEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->isEnabled:Z

    return-void
.end method

.method public setNewestItemAmount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemAmount:Ljava/lang/String;

    return-void
.end method

.method public setNewestItemCategoryIcon([B)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemCategoryIcon:[B

    return-void
.end method

.method public setNewestItemComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemComment:Ljava/lang/String;

    return-void
.end method

.method public setNewestItemCurrencyCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemCurrencyCode:Ljava/lang/String;

    return-void
.end method

.method public setNewestItemMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemMethod:Ljava/lang/String;

    return-void
.end method

.method public setNewestItemTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemTime:J

    invoke-static {p1, p2}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->newestItemHumanTime:Ljava/lang/String;

    return-void
.end method

.method public setTotalMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->totalMonth:Ljava/lang/String;

    return-void
.end method

.method public setTotalToday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->totalToday:Ljava/lang/String;

    return-void
.end method
