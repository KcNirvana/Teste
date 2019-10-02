.class public Lcom/xiaomi/phonenum/PhoneNumStore;
.super Ljava/lang/Object;
.source "PhoneNumStore.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PhoneNumStore"


# instance fields
.field private logger:Lcom/xiaomi/phonenum/utils/Logger;

.field private mContext:Landroid/content/Context;

.field private obtainHandler:Lcom/xiaomi/phonenum/obtain/ObtainHandler;

.field private phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

.field private smsVerifier:Lcom/xiaomi/phonenum/obtain/SmsVerifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/phonenum/phone/PhoneUtil;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/LoggerManager;->getLogger()Lcom/xiaomi/phonenum/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    iput-object p1, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    new-instance p1, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient$HttpFactory;

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaomi/phonenum/obtain/EncryptHttpClient$HttpFactory;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/xiaomi/phonenum/obtain/ObtainHandler;

    iget-object v1, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3, p1}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/phonenum/phone/PhoneUtil;Lcom/xiaomi/phonenum/http/HttpFactory;)V

    iput-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->obtainHandler:Lcom/xiaomi/phonenum/obtain/ObtainHandler;

    new-instance p2, Lcom/xiaomi/phonenum/obtain/DataProxyParser;

    invoke-direct {p2, p1}, Lcom/xiaomi/phonenum/obtain/DataProxyParser;-><init>(Lcom/xiaomi/phonenum/http/HttpFactory;)V

    new-instance p3, Lcom/xiaomi/phonenum/obtain/HttpProxyParser;

    invoke-direct {p3, p1}, Lcom/xiaomi/phonenum/obtain/HttpProxyParser;-><init>(Lcom/xiaomi/phonenum/http/HttpFactory;)V

    invoke-virtual {p2, p3}, Lcom/xiaomi/phonenum/obtain/DataProxyParser;->setNext(Lcom/xiaomi/phonenum/obtain/Parser;)V

    iget-object p1, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->obtainHandler:Lcom/xiaomi/phonenum/obtain/ObtainHandler;

    invoke-virtual {p1, p2}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->setParser(Lcom/xiaomi/phonenum/obtain/Parser;)V

    return-void
.end method

.method private checkPermission()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/obtain/PhoneException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/phonenum/obtain/PhoneException;

    sget-object v1, Lcom/xiaomi/phonenum/bean/Error;->NO_READ_PHONE_STATE_PERMISSION:Lcom/xiaomi/phonenum/bean/Error;

    invoke-direct {v0, v1}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;)V

    throw v0
.end method

.method private getAndVerifyPhoneNum(I)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/phonenum/obtain/PhoneException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->smsVerifier:Lcom/xiaomi/phonenum/obtain/SmsVerifier;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->LINE_NUMBER:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/phonenum/PhoneNumStore;->getPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->smsVerifier:Lcom/xiaomi/phonenum/obtain/SmsVerifier;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/obtain/SmsVerifier;->verify(Lcom/xiaomi/phonenum/bean/PhoneNum;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->errorCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->updatePhoneNum(Lcom/xiaomi/phonenum/bean/PhoneNum;)V

    :cond_0
    return-object p1

    :cond_1
    new-instance p1, Lcom/xiaomi/phonenum/obtain/PhoneException;

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->NOT_SUPPORT:Lcom/xiaomi/phonenum/bean/Error;

    const-string v1, "not support sms"

    invoke-direct {p1, v0, v1}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;Ljava/lang/String;)V

    throw p1
.end method

.method private getPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/phonenum/obtain/PhoneException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/phonenum/PhoneNumStore;->peekPhoneNumForSubId(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->obtainHandler:Lcom/xiaomi/phonenum/obtain/ObtainHandler;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->obtainPhoneNumber(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, v0, Lcom/xiaomi/phonenum/bean/PhoneNum;->errorCode:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->updatePhoneNum(Lcom/xiaomi/phonenum/bean/PhoneNum;)V

    :cond_0
    return-object v0
.end method

.method private peekPhoneNumForSubId(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/obtain/PhoneException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getSimForSubId(I)Lcom/xiaomi/phonenum/bean/Sim;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;

    move-result-object v1

    iget-object v0, v0, Lcom/xiaomi/phonenum/bean/Sim;->iccid:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->queryPhoneNum(Ljava/lang/String;I)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->phoneLevel:I

    iget v2, p2, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->value:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v2, "PhoneNumStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneLevel not match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->phoneLevel:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->value:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p2, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->updateTime:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string v1, "PhoneNumStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneLevel Expired "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->updateTime:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    return-object v0

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->logger:Lcom/xiaomi/phonenum/utils/Logger;

    const-string p2, "PhoneNumStore"

    const-string v0, "SIM_NOT_READY"

    invoke-interface {p1, p2, v0}, Lcom/xiaomi/phonenum/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/phonenum/obtain/PhoneException;

    sget-object p2, Lcom/xiaomi/phonenum/bean/Error;->SIM_NOT_READY:Lcom/xiaomi/phonenum/bean/Error;

    invoke-direct {p1, p2}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;)V

    throw p1
.end method


# virtual methods
.method public blockObtainPhoneNum(I)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/phonenum/obtain/PhoneException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->CACHE:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/phonenum/PhoneNumStore;->blockObtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    return-object p1
.end method

.method public blockObtainPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/phonenum/obtain/PhoneException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->checkPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getSubIdForSlotId(I)I

    move-result p1

    iget v0, p2, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->value:I

    sget-object v1, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->SMS_VERIFY:Lcom/xiaomi/phonenum/obtain/PhoneLevel;

    iget v1, v1, Lcom/xiaomi/phonenum/obtain/PhoneLevel;->value:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/phonenum/PhoneNumStore;->getAndVerifyPhoneNum(I)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/phonenum/PhoneNumStore;->getPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lcom/xiaomi/phonenum/obtain/PhoneException;

    sget-object p2, Lcom/xiaomi/phonenum/bean/Error;->NO_READ_PHONE_STATE_PERMISSION:Lcom/xiaomi/phonenum/bean/Error;

    invoke-direct {p1, p2}, Lcom/xiaomi/phonenum/obtain/PhoneException;-><init>(Lcom/xiaomi/phonenum/bean/Error;)V

    throw p1
.end method

.method public invalidatePhoneNum(Lcom/xiaomi/phonenum/bean/PhoneNum;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->iccid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->getInstance(Landroid/content/Context;)Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;

    move-result-object v0

    iget-object p1, p1, Lcom/xiaomi/phonenum/bean/PhoneNum;->iccid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/db/PhoneNumDBHelper;->deletePhoneNum(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public peekPhoneNum(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/phonenum/obtain/PhoneException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/phonenum/PhoneNumStore;->checkPermission()V

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->phoneUtil:Lcom/xiaomi/phonenum/phone/PhoneUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/phone/PhoneUtil;->getSubIdForSlotId(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/phonenum/PhoneNumStore;->peekPhoneNumForSubId(ILcom/xiaomi/phonenum/obtain/PhoneLevel;)Lcom/xiaomi/phonenum/bean/PhoneNum;

    move-result-object p1

    return-object p1
.end method

.method public setObtainResponseParser(Lcom/xiaomi/phonenum/obtain/Parser;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->obtainHandler:Lcom/xiaomi/phonenum/obtain/ObtainHandler;

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/obtain/ObtainHandler;->setParser(Lcom/xiaomi/phonenum/obtain/Parser;)V

    return-void
.end method

.method public setSmsVerifier(Lcom/xiaomi/phonenum/obtain/SmsVerifier;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/PhoneNumStore;->smsVerifier:Lcom/xiaomi/phonenum/obtain/SmsVerifier;

    return-void
.end method
