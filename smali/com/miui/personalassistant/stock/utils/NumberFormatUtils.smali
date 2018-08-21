.class public Lcom/miui/personalassistant/stock/utils/NumberFormatUtils;
.super Ljava/lang/Object;
.source "NumberFormatUtils.java"


# static fields
.field private static final DECIMAL_DEFAULT_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NumberFormatUtil"

.field private static sDefaultInstance:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/miui/personalassistant/stock/utils/NumberFormatUtils;->getInstance(Ljava/util/Locale;I)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/miui/personalassistant/stock/utils/NumberFormatUtils;->sDefaultInstance:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormattedAmount(D)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/miui/personalassistant/stock/utils/NumberFormatUtils;->sDefaultInstance:Ljava/text/NumberFormat;

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
