.class public Lcom/miui/payment/captor/PaymentCaptor;
.super Ljava/lang/Object;
.source "PaymentCaptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentFactory"


# instance fields
.field private mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

.field private mRawDataParser:Lcom/miui/payment/captor/parser/RawDataParser;


# direct methods
.method public constructor <init>(Lcom/miui/payment/captor/CaptorToken;Lcom/miui/payment/captor/parser/RawDataParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/payment/captor/PaymentCaptor;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    iput-object p2, p0, Lcom/miui/payment/captor/PaymentCaptor;->mRawDataParser:Lcom/miui/payment/captor/parser/RawDataParser;

    return-void
.end method

.method private getAmountParser()Lcom/miui/payment/captor/parser/AmountParser;
    .locals 1

    new-instance v0, Lcom/miui/payment/captor/parser/AmountParserImpl;

    invoke-direct {v0}, Lcom/miui/payment/captor/parser/AmountParserImpl;-><init>()V

    return-object v0
.end method

.method private getCategoryParser()Lcom/miui/payment/captor/parser/CategoryParser;
    .locals 1

    new-instance v0, Lcom/miui/payment/captor/parser/CategoryParserImpl;

    invoke-direct {v0}, Lcom/miui/payment/captor/parser/CategoryParserImpl;-><init>()V

    return-object v0
.end method

.method private getCommentParser()Lcom/miui/payment/captor/parser/CommentParser;
    .locals 1

    new-instance v0, Lcom/miui/payment/captor/parser/CommentParserImpl;

    invoke-direct {v0}, Lcom/miui/payment/captor/parser/CommentParserImpl;-><init>()V

    return-object v0
.end method

.method private getDateParser()Lcom/miui/payment/captor/parser/DateParser;
    .locals 1

    new-instance v0, Lcom/miui/payment/captor/parser/DateParserImpl;

    invoke-direct {v0}, Lcom/miui/payment/captor/parser/DateParserImpl;-><init>()V

    return-object v0
.end method

.method private getMethodParser()Lcom/miui/payment/captor/parser/MethodParser;
    .locals 1

    new-instance v0, Lcom/miui/payment/captor/parser/MethodParserImpl;

    invoke-direct {v0}, Lcom/miui/payment/captor/parser/MethodParserImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCaptorToken()Lcom/miui/payment/captor/CaptorToken;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/PaymentCaptor;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    return-object v0
.end method

.method public tryParsePaymentRawData()Lcom/miui/payment/data/TransactionItem;
    .locals 14

    iget-object v9, p0, Lcom/miui/payment/captor/PaymentCaptor;->mRawDataParser:Lcom/miui/payment/captor/parser/RawDataParser;

    invoke-interface {v9}, Lcom/miui/payment/captor/parser/RawDataParser;->tryToParseRawData()Lcom/miui/payment/captor/PaymentRawDesc;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v9, "PaymentFactory"

    const-string/jumbo v12, "raw desc result is null"

    invoke-static {v9, v12}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    const-string/jumbo v9, "raw data desc: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-static {v9, v12}, Lcom/miui/payment/log/Logger;->debugPrivacy(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-direct {v1}, Lcom/miui/payment/data/TransactionItem$Builder;-><init>()V

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentCaptor;->getAmountParser()Lcom/miui/payment/captor/parser/AmountParser;

    move-result-object v0

    invoke-virtual {v7}, Lcom/miui/payment/captor/PaymentRawDesc;->getAmountCurrency()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/miui/payment/captor/PaymentRawDesc;->getAmountNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/miui/payment/captor/PaymentRawDesc;->getAmountUnit()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v9, v12, v13}, Lcom/miui/payment/captor/parser/AmountParser;->parseAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/miui/payment/captor/parser/AmountParser;->getAmount()D

    move-result-wide v12

    invoke-interface {v0}, Lcom/miui/payment/captor/parser/AmountParser;->getCurrencyCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v12, v13, v9}, Lcom/miui/payment/data/TransactionItem$Builder;->setAmount(DLjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-interface {v0}, Lcom/miui/payment/captor/parser/AmountParser;->getAmount()D

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lcom/miui/payment/data/TransactionItem$Builder;->setAmountEdit(D)Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentCaptor;->getDateParser()Lcom/miui/payment/captor/parser/DateParser;

    move-result-object v5

    invoke-virtual {v7}, Lcom/miui/payment/captor/PaymentRawDesc;->getDate()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/miui/payment/captor/parser/DateParser;->parseDateTime(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7}, Lcom/miui/payment/captor/PaymentRawDesc;->getMethodAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v10, v11, v9}, Lcom/miui/payment/data/TransactionItem$Builder;->setTransactionState(JLjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-virtual {v1, v10, v11}, Lcom/miui/payment/data/TransactionItem$Builder;->setTransactionTimeEdit(J)Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentCaptor;->getCategoryParser()Lcom/miui/payment/captor/parser/CategoryParser;

    move-result-object v3

    iget-object v9, p0, Lcom/miui/payment/captor/PaymentCaptor;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v7}, Lcom/miui/payment/captor/PaymentRawDesc;->getCategory()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v9, v12}, Lcom/miui/payment/captor/parser/CategoryParser;->parseCategory(Lcom/miui/payment/captor/CaptorToken;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/payment/data/TransactionItem$Builder;->setCategory(I)Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-virtual {v1, v2}, Lcom/miui/payment/data/TransactionItem$Builder;->setCategoryEdit(I)Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentCaptor;->getMethodParser()Lcom/miui/payment/captor/parser/MethodParser;

    move-result-object v6

    iget-object v9, p0, Lcom/miui/payment/captor/PaymentCaptor;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v7}, Lcom/miui/payment/captor/PaymentRawDesc;->getMethodName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Lcom/miui/payment/captor/PaymentRawDesc;->getMethodAccount()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v9, v12, v13}, Lcom/miui/payment/captor/parser/MethodParser;->parseMethod(Lcom/miui/payment/captor/CaptorToken;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/miui/payment/captor/parser/MethodParser;->getMethod()I

    move-result v9

    invoke-interface {v6}, Lcom/miui/payment/captor/parser/MethodParser;->getMethodDesc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Lcom/miui/payment/data/TransactionItem$Builder;->setMethod(ILjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-interface {v6}, Lcom/miui/payment/captor/parser/MethodParser;->getMethod()I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/miui/payment/data/TransactionItem$Builder;->setMethodEdit(I)Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-direct {p0}, Lcom/miui/payment/captor/PaymentCaptor;->getCommentParser()Lcom/miui/payment/captor/parser/CommentParser;

    move-result-object v4

    iget-object v9, p0, Lcom/miui/payment/captor/PaymentCaptor;->mCaptorToken:Lcom/miui/payment/captor/CaptorToken;

    invoke-virtual {v7}, Lcom/miui/payment/captor/PaymentRawDesc;->getComment()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v9, v12}, Lcom/miui/payment/captor/parser/CommentParser;->parseComment(Lcom/miui/payment/captor/CaptorToken;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/miui/payment/data/TransactionItem$Builder;->setComment(Ljava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/miui/payment/data/TransactionItem$Builder;->setCreateSource(I)Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-virtual {v1}, Lcom/miui/payment/data/TransactionItem$Builder;->build()Lcom/miui/payment/data/TransactionItem;

    move-result-object v8

    const-string/jumbo v9, "transaction item: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-static {v9, v12}, Lcom/miui/payment/log/Logger;->debugPrivacy(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
