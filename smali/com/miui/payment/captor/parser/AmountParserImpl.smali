.class public Lcom/miui/payment/captor/parser/AmountParserImpl;
.super Ljava/lang/Object;
.source "AmountParserImpl.java"

# interfaces
.implements Lcom/miui/payment/captor/parser/AmountParser;


# instance fields
.field private mAmount:D

.field private mCurrencyCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/payment/captor/parser/AmountParserImpl;->mAmount:D

    return-wide v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/AmountParserImpl;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public parseAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/miui/payment/utils/NumberFormatUtil;->parseAmountString(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/payment/captor/parser/AmountParserImpl;->mAmount:D

    invoke-static {}, Lcom/miui/payment/utils/NumberFormatUtil;->getDefaultCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/captor/parser/AmountParserImpl;->mCurrencyCode:Ljava/lang/String;

    return-void
.end method
