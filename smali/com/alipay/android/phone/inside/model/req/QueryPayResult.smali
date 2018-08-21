.class public Lcom/alipay/android/phone/inside/model/req/QueryPayResult;
.super Lcom/alipay/android/phone/inside/model/req/BaseModel;
.source "QueryPayResult.java"


# instance fields
.field private payCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/model/req/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/req/QueryPayResult;->payCode:Ljava/lang/String;

    return-object v0
.end method

.method public setPayCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/model/req/QueryPayResult;->payCode:Ljava/lang/String;

    return-void
.end method
