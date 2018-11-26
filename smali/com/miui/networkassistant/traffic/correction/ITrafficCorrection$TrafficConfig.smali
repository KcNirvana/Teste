.class public Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mBrandId:Ljava/lang/String;

.field private mCityId:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mOperatorId:Ljava/lang/String;

.field private mProvinceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mProvinceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mCityId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mBrandId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mImsi:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mProvinceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mCityId:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mOperatorId:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mBrandId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBrandId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mBrandId:Ljava/lang/String;

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mOperatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mProvinceId:Ljava/lang/String;

    return-object v0
.end method

.method public setBrandId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mBrandId:Ljava/lang/String;

    return-void
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mCityId:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mImsi:Ljava/lang/String;

    return-void
.end method

.method public setOperatorId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mOperatorId:Ljava/lang/String;

    return-void
.end method

.method public setProvinceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->mProvinceId:Ljava/lang/String;

    return-void
.end method
