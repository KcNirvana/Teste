.class public Lcom/miui/payment/utils/NumberFormatUtil;
.super Ljava/lang/Object;
.source "NumberFormatUtil.java"


# static fields
.field private static final DECIMAL_DEFAULT_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NumberFormatUtil"

.field private static mDefaultCurrencyCode:Ljava/lang/String;

.field private static sDefaultInstance:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/miui/payment/utils/NumberFormatUtil;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/miui/payment/utils/NumberFormatUtil;->sDefaultInstance:Ljava/text/NumberFormat;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/payment/utils/NumberFormatUtil;->mDefaultCurrencyCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(DD)Z
    .locals 4

    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrencyUnit(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "CNY"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const v1, 0x1b0b00b9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Currency;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultCurrencyCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/payment/utils/NumberFormatUtil;->mDefaultCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultCurrencyUnit(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x1b0b00b9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatedLargeAmount(Landroid/content/Context;Ljava/lang/Double;)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x416312d000000000L    # 1.0E7

    div-double/2addr v0, v2

    double-to-int v0, v0

    if-lez v0, :cond_0

    const v0, 0x1b0b002e

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v2, v8}, Lcom/miui/payment/utils/NumberFormatUtil;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    if-lez v0, :cond_1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0, v8}, Lcom/miui/payment/utils/NumberFormatUtil;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    if-lez v0, :cond_2

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0, v4}, Lcom/miui/payment/utils/NumberFormatUtil;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/payment/utils/NumberFormatUtil;->getFormattedAmount(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFormattedAmount(D)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/miui/payment/utils/NumberFormatUtil;->sDefaultInstance:Ljava/text/NumberFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;
    .locals 1

    invoke-static {p0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-object v0
.end method

.method public static parseAmountString(Ljava/lang/String;)D
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-char v2, v3, v4

    const/16 v6, 0x30

    if-lt v2, v6, :cond_0

    const/16 v6, 0x39

    if-le v2, v6, :cond_1

    :cond_0
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    return-wide v6
.end method
