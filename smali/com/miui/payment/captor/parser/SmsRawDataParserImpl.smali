.class public Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;
.super Ljava/lang/Object;
.source "SmsRawDataParserImpl.java"

# interfaces
.implements Lcom/miui/payment/captor/parser/RawDataParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsRawDataParserImpl"


# instance fields
.field private mItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/payment/captor/parser/SmartSmsCard$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartSmsCard:Lcom/miui/payment/captor/parser/SmartSmsCard;

.field private mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSource:Ljava/lang/String;

    return-void
.end method

.method private createSmartSmsCard(Ljava/lang/String;)Lcom/miui/payment/captor/parser/SmartSmsCard;
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-class v6, Lcom/miui/payment/captor/parser/SmartSmsCard;

    invoke-static {p1, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/miui/payment/captor/parser/SmartSmsCard;

    move-object v3, v0

    const-string/jumbo v6, "create smart sms card"

    invoke-static {v6, v4, v5}, Lcom/miui/payment/log/Logger;->pref(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    const-string/jumbo v6, "SmsRawDataParserImpl"

    const-string/jumbo v7, "error create smart sms card"

    invoke-static {v6, v2, v7}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createSmartSmsCardItemRule()Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;
    .locals 3

    new-instance v1, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    invoke-direct {v1}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;-><init>()V

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->setPaymentTypeValue(Ljava/lang/String;)V

    const-string/jumbo v2, "202"

    invoke-virtual {v1, v2}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->setType(Ljava/lang/String;)V

    const-string/jumbo v2, "6010"

    invoke-virtual {v1, v2}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->setAmount(Ljava/lang/String;)V

    const-string/jumbo v2, "621"

    invoke-virtual {v1, v2}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->setAmountUnit(Ljava/lang/String;)V

    const-string/jumbo v2, "611"

    invoke-virtual {v1, v2}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->setCurrency(Ljava/lang/String;)V

    const-string/jumbo v2, "201"

    invoke-virtual {v1, v2}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->setMethodNumber(Ljava/lang/String;)V

    const-string/jumbo v2, "207"

    invoke-virtual {v1, v2}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->setMethodName(Ljava/lang/String;)V

    const-string/jumbo v2, "1011"

    invoke-virtual {v1, v2}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->setDate(Ljava/lang/String;)V

    const-string/jumbo v2, "1012"

    invoke-virtual {v1, v2}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->setTime(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "203"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "2030"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->setDesc(Ljava/util/List;)V

    return-object v1
.end method

.method private getCardId()I
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCard:Lcom/miui/payment/captor/parser/SmartSmsCard;

    invoke-virtual {v0}, Lcom/miui/payment/captor/parser/SmartSmsCard;->getCardID()I

    move-result v0

    return v0
.end method

.method private getDateDesc()Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    invoke-virtual {v3}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    invoke-virtual {v3}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/miui/payment/utils/DateUtil;->getCurrentMinute()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3
    const-string/jumbo v3, "SmsRawDataParserImpl"

    const/4 v4, 0x0

    const-string/jumbo v5, "getDateDesc time is null"

    invoke-static {v3, v4, v5}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getItemValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mItems:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mItems:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mItems:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/captor/parser/SmartSmsCard$Item;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/payment/captor/parser/SmartSmsCard$Item;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private getMethodNameDesc()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    invoke-virtual {v1}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getCardId()I

    move-result v1

    const/16 v2, 0x29c

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u4fe1\u7528\u5361"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getPaymentDesc()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    invoke-virtual {v4}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->getDesc()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isPaymentData()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    invoke-virtual {v0}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    invoke-virtual {v1}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->getPaymentTypeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isPaymentRawDescValid(Lcom/miui/payment/captor/PaymentRawDesc;)Z
    .locals 8

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/payment/captor/PaymentRawDesc;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1b080011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v2, v5

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public tryToParseRawData()Lcom/miui/payment/captor/PaymentRawDesc;
    .locals 8

    const/4 v3, 0x0

    const-string/jumbo v4, "sms source: "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSource:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/miui/payment/log/Logger;->debugPrivacy(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SmsRawDataParserImpl"

    const-string/jumbo v5, "extra is null"

    invoke-static {v4, v5}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v2}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->createSmartSmsCard(Ljava/lang/String;)Lcom/miui/payment/captor/parser/SmartSmsCard;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v4, "SmsRawDataParserImpl"

    const-string/jumbo v5, "card can\'t parse"

    invoke-static {v4, v5}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->createSmartSmsCardItemRule()Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    iput-object v1, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCard:Lcom/miui/payment/captor/parser/SmartSmsCard;

    iget-object v4, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCard:Lcom/miui/payment/captor/parser/SmartSmsCard;

    invoke-virtual {v4}, Lcom/miui/payment/captor/parser/SmartSmsCard;->getItems()Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mItems:Ljava/util/Map;

    invoke-direct {p0}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->isPaymentData()Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "SmsRawDataParserImpl"

    const-string/jumbo v5, "not payment data"

    invoke-static {v4, v5}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/miui/payment/captor/PaymentRawDesc;

    invoke-direct {v0}, Lcom/miui/payment/captor/PaymentRawDesc;-><init>()V

    iget-object v4, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    invoke-virtual {v4}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->getAmount()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setAmountNumber(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    invoke-virtual {v4}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->getAmountUnit()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setAmountUnit(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    invoke-virtual {v4}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setAmountCurrency(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getDateDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setDate(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getMethodNameDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setMethodName(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->mSmartSmsCardItemRule:Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;

    invoke-virtual {v4}, Lcom/miui/payment/captor/parser/SmartSmsCardItemRule;->getMethodNumber()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setMethodAccount(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->getPaymentDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/payment/captor/PaymentRawDesc;->setCategory(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/payment/captor/parser/SmsRawDataParserImpl;->isPaymentRawDescValid(Lcom/miui/payment/captor/PaymentRawDesc;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "SmsRawDataParserImpl"

    const-string/jumbo v5, "not valid payment data"

    invoke-static {v4, v5}, Lcom/miui/payment/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_0
.end method
