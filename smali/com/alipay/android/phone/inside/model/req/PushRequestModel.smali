.class public Lcom/alipay/android/phone/inside/model/req/PushRequestModel;
.super Lcom/alipay/android/phone/inside/model/req/BaseModel;
.source "PushRequestModel.java"


# instance fields
.field private dynamicIds:Ljava/lang/String;

.field private payCodePageVisible:Z

.field private pushContext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/model/req/BaseModel;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/inside/model/req/PushRequestModel;->payCodePageVisible:Z

    return-void
.end method


# virtual methods
.method public getDynamicIds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/req/PushRequestModel;->dynamicIds:Ljava/lang/String;

    return-object v0
.end method

.method public getPushContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/req/PushRequestModel;->pushContext:Ljava/lang/String;

    return-object v0
.end method

.method public isPayCodePageVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/phone/inside/model/req/PushRequestModel;->payCodePageVisible:Z

    return v0
.end method

.method public setDynamicIds(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/model/req/PushRequestModel;->dynamicIds:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setPayCodePageVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/phone/inside/model/req/PushRequestModel;->payCodePageVisible:Z

    return-void
.end method

.method public setPushContext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/model/req/PushRequestModel;->pushContext:Ljava/lang/String;

    return-void
.end method
