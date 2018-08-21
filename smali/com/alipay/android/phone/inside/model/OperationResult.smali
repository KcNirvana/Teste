.class public Lcom/alipay/android/phone/inside/model/OperationResult;
.super Ljava/lang/Object;
.source "OperationResult.java"


# instance fields
.field private code:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    iput-object v0, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->code:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->result:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    iput-object v0, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->code:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->result:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->code:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->code:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->code:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->result:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OperationResult [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->code:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/OperationResult;->code:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getDesc()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
