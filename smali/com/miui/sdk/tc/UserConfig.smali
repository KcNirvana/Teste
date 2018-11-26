.class public Lcom/miui/sdk/tc/UserConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mCityId:Ljava/lang/String;

.field private mOperatorId:Ljava/lang/String;

.field private mProvinceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/sdk/tc/UserConfig;->mProvinceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/sdk/tc/UserConfig;->mCityId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/sdk/tc/UserConfig;->mOperatorId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/UserConfig;->mCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/UserConfig;->mOperatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/UserConfig;->mProvinceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/sdk/tc/UserConfig;->mCityId:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/sdk/tc/UserConfig;->mOperatorId:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/sdk/tc/UserConfig;->mProvinceId:Ljava/lang/String;

    return-void
.end method
