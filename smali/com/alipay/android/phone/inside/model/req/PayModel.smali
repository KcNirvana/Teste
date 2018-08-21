.class public Lcom/alipay/android/phone/inside/model/req/PayModel;
.super Lcom/alipay/android/phone/inside/model/req/BaseModel;
.source "PayModel.java"


# instance fields
.field private isOutTrade:Z

.field private payStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/model/req/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/req/PayModel;->payStr:Ljava/lang/String;

    return-object v0
.end method

.method public isOutTrade()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/phone/inside/model/req/PayModel;->isOutTrade:Z

    return v0
.end method

.method public setOutTrade(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/phone/inside/model/req/PayModel;->isOutTrade:Z

    return-void
.end method

.method public setPayStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/model/req/PayModel;->payStr:Ljava/lang/String;

    return-void
.end method
