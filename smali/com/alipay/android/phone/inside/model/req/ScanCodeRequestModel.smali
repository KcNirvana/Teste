.class public Lcom/alipay/android/phone/inside/model/req/ScanCodeRequestModel;
.super Lcom/alipay/android/phone/inside/model/req/BaseModel;
.source "ScanCodeRequestModel.java"


# instance fields
.field private code:Ljava/lang/String;

.field private codeType:Ljava/lang/String;

.field private useInsideMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/model/req/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/req/ScanCodeRequestModel;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/req/ScanCodeRequestModel;->codeType:Ljava/lang/String;

    return-object v0
.end method

.method public isUseInsideMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/phone/inside/model/req/ScanCodeRequestModel;->useInsideMode:Z

    return v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/model/req/ScanCodeRequestModel;->code:Ljava/lang/String;

    return-void
.end method

.method public setCodeType(Lcom/alipay/android/phone/inside/model/CodeTypeEnum;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/alipay/android/phone/inside/model/CodeTypeEnum;->BARCODE:Lcom/alipay/android/phone/inside/model/CodeTypeEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/model/CodeTypeEnum;->getCodeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/android/phone/inside/model/req/ScanCodeRequestModel;->codeType:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/phone/inside/model/CodeTypeEnum;->getCodeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setUseInsideMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/phone/inside/model/req/ScanCodeRequestModel;->useInsideMode:Z

    return-void
.end method
