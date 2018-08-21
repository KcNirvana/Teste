.class public Lcom/alipay/android/phone/inside/model/req/UserIdentifyModel;
.super Lcom/alipay/android/phone/inside/model/req/BaseModel;
.source "UserIdentifyModel.java"


# instance fields
.field private imei:Ljava/lang/String;

.field private utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/model/req/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/req/UserIdentifyModel;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/model/req/UserIdentifyModel;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/model/req/UserIdentifyModel;->imei:Ljava/lang/String;

    return-void
.end method

.method public setUtdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/model/req/UserIdentifyModel;->utdid:Ljava/lang/String;

    return-void
.end method
