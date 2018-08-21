.class public Lcom/alipay/android/phone/inside/commonbiz/model/a;
.super Ljava/lang/Object;
.source "OperationResult.java"


# instance fields
.field private a:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    iput-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/model/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    iput-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/model/a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    return-object v0
.end method

.method public a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/commonbiz/model/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/commonbiz/model/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"code\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\",\"result\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/commonbiz/model/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
