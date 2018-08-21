.class public Lcom/miui/payment/provider/PaymentProvider;
.super Landroid/content/ContentProvider;
.source "PaymentProvider.java"


# static fields
.field private static final PAYMENT_CARD_CONTENT:I = 0x1

.field private static final PAYMENT_SOURCE_ENABLED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PaymentProvider"

.field private static sURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/payment/provider/PaymentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    sget-object v0, Lcom/miui/payment/provider/PaymentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.paymentassistant"

    const-string/jumbo v2, "payment_card_content"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/miui/payment/provider/PaymentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.miui.paymentassistant"

    const-string/jumbo v2, "payment_source_enabled"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private hasAccessPermission()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/payment/provider/PaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    array-length v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    sget-object v6, Lcom/miui/payment/provider/ProviderConstants;->sAccessWhiteList:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "PaymentProvider"

    const-string/jumbo v5, "no permission : %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v4, v5, v2}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    goto :goto_1
.end method

.method private queryPaymentCardData()Landroid/database/Cursor;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/miui/payment/provider/PaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v13, Lcom/miui/payment/provider/ProviderConstants$PaymentCard;->sPaymentCardColumns:[Ljava/lang/String;

    const/4 v14, 0x1

    invoke-direct {v5, v13, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-virtual {v5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/miui/payment/PaymentPrefs;->isPaymentCardAuth(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string/jumbo v13, "payment_enabled"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const-string/jumbo v13, "payment_enabled"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :try_start_0
    invoke-static {v4}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance(Landroid/content/Context;)Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v10, v6, v7}, Lcom/miui/payment/data/source/TransactionRepository;->queryDayTransactionTotal(J)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string/jumbo v13, "total_today"

    invoke-virtual {v11}, Lcom/miui/payment/data/TransactionTotal;->getFormattedAmountTotal()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_2
    invoke-virtual {v10, v6, v7}, Lcom/miui/payment/data/source/TransactionRepository;->queryMonthTransactionTotal(J)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string/jumbo v13, "total_current_month"

    invoke-virtual {v9}, Lcom/miui/payment/data/TransactionTotal;->getFormattedAmountTotal()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :cond_3
    invoke-virtual {v10}, Lcom/miui/payment/data/source/TransactionRepository;->queryNewestTransactionItem()Lcom/miui/payment/data/TransactionItem;

    move-result-object v12

    if-eqz v12, :cond_0

    const-string/jumbo v13, "newest_item_id"

    invoke-virtual {v12}, Lcom/miui/payment/data/TransactionItem;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v13, "newest_item_amount"

    invoke-virtual {v12}, Lcom/miui/payment/data/TransactionItem;->getFormattedAmountEdit()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v13, "newest_item_currency_code"

    invoke-virtual {v12}, Lcom/miui/payment/data/TransactionItem;->getCurrencyCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v13, "newest_item_time"

    invoke-virtual {v12}, Lcom/miui/payment/data/TransactionItem;->getTransactionTimeEdit()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string/jumbo v13, "newest_item_method"

    invoke-virtual {v12}, Lcom/miui/payment/data/TransactionItem;->getMethodEditCode()I

    move-result v14

    invoke-virtual {v12}, Lcom/miui/payment/data/TransactionItem;->getTransactionId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v4, v14, v15}, Lcom/miui/payment/utils/MethodHelper;->getPresetMethodDesc(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v12}, Lcom/miui/payment/data/TransactionItem;->getCategoryEditCode()I

    move-result v1

    const-string/jumbo v13, "newest_item_category_icon"

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v14, v1}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryIconCompressedBytes(Landroid/content/res/Resources;I)[B

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v12}, Lcom/miui/payment/data/TransactionItem;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v13, "newest_item_comment"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    :goto_1
    invoke-virtual {v0, v13, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v13, "PaymentProvider"

    const-string/jumbo v14, "query card data"

    invoke-static {v13, v8, v14}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1
.end method

.method private updatePaymentCardAuth(Landroid/content/ContentValues;)I
    .locals 6

    const/4 v1, 0x1

    const-string/jumbo v2, "payment_enabled"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "PaymentProvider"

    const-string/jumbo v2, "update no values"

    invoke-static {v1, v2}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x2

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "PaymentProvider"

    const-string/jumbo v3, "payment card auth: %s"

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/payment/provider/PaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/payment/PaymentPrefs;->setPaymentCardEnabled(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/payment/provider/PaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.miui.smsextra"

    invoke-static {v2, v3, v1}, Lcom/miui/payment/PaymentPrefs;->setSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/miui/payment/provider/PaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-static {v2, v3, v1}, Lcom/miui/payment/PaymentPrefs;->setSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateSourceEnabled(Landroid/content/ContentValues;)I
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "pkgName"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "enabled"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/payment/provider/PaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, v1, v5}, Lcom/miui/payment/PaymentPrefs;->setSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string/jumbo v4, "PaymentProvider"

    const-string/jumbo v5, "payment source enabled : %s = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    const-string/jumbo v3, "source_enabled"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/miui/payment/provider/PaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/miui/payment/PaymentPrefs;->isSourcePkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "source_enabled"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2880b0e3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    const-string/jumbo v0, "PaymentProvider"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/miui/payment/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/payment/provider/PaymentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/CompatUtil;->encryptOldPaymentData(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/payment/provider/PaymentProvider;->hasAccessPermission()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/miui/payment/provider/PaymentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v2, "PaymentProvider"

    const-string/jumbo v3, "not support query: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/payment/provider/PaymentProvider;->queryPaymentCardData()Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/payment/provider/PaymentProvider;->hasAccessPermission()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    sget-object v2, Lcom/miui/payment/provider/PaymentProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v2, "PaymentProvider"

    const-string/jumbo v3, "update not support: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/miui/payment/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/miui/payment/provider/PaymentProvider;->updatePaymentCardAuth(Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/miui/payment/provider/PaymentProvider;->updateSourceEnabled(Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
