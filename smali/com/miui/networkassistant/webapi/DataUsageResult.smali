.class public Lcom/miui/networkassistant/webapi/DataUsageResult;
.super Lcom/miui/common/g/d;
.source ""


# instance fields
.field private mBillLeft:J

.field private mBrand:Ljava/lang/String;

.field private mCallTimeLeft:J

.field private mCallTimeTotal:J

.field private mCityCode:I

.field private mIdleLeft:J

.field private mIdleOn:Z

.field private mIdleTotal:J

.field private mLeftFlow:J

.field private mOperator:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mProvinceCode:I

.field private mTotal:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/g/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)Z
    .locals 11

    const/4 v10, -0x1

    const-wide/16 v8, -0x1

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    const-wide/16 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/g/d;->doParseJson(Lorg/json/JSONObject;)Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "totalflow"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mTotal:J

    const-string/jumbo v1, "leftflow"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mLeftFlow:J

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "idleon"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleOn:Z

    const-string/jumbo v1, "identify"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mPhoneNumber:Ljava/lang/String;

    const-string/jumbo v1, "brand"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBrand:Ljava/lang/String;

    const-string/jumbo v1, "sp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mOperator:Ljava/lang/String;

    const-string/jumbo v1, "balance"

    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBillLeft:J

    const-string/jumbo v1, "totalCall"

    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeTotal:J

    const-string/jumbo v1, "leftCall"

    invoke-virtual {v0, v1, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeLeft:J

    const-string/jumbo v1, "province"

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mProvinceCode:I

    const-string/jumbo v1, "city"

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCityCode:I

    iget-boolean v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleOn:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "idletotal"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleTotal:J

    const-string/jumbo v1, "idleleft"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleLeft:J

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mDesc:Ljava/lang/String;

    const-string/jumbo v0, "oldage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mOldAge:I

    goto :goto_0
.end method

.method public getBillLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBillLeft:J

    return-wide v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBrand:Ljava/lang/String;

    return-object v0
.end method

.method public getCallTimeLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeLeft:J

    return-wide v0
.end method

.method public getCallTimeTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeTotal:J

    return-wide v0
.end method

.method public getCallTimeUsed()J
    .locals 4

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeTotal:J

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeLeft:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getCityCode()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCityCode:I

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleLeft:J

    return-wide v0
.end method

.method public getIdleTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleTotal:J

    return-wide v0
.end method

.method public getIdleUsed()J
    .locals 6

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleTotal:J

    iget-wide v4, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleLeft:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getLeftFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mLeftFlow:J

    return-wide v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceCode()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mProvinceCode:I

    return v0
.end method

.method public getTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mTotal:J

    return-wide v0
.end method

.method public getUsedFlow()J
    .locals 6

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mTotal:J

    iget-wide v4, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mLeftFlow:J

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public isBillOn()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBillLeft:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallTimeOn()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeLeft:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdleOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleOn:Z

    return v0
.end method

.method public isServerError()Z
    .locals 2

    const-string/jumbo v0, "3"

    iget-object v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isServiceNotSupported()Z
    .locals 2

    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBrand:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCode:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mOperator:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setTotal(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mTotal:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ", mTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mTotal:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mLeftFlow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mLeftFlow:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mIdleOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mIdleTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleTotal:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mIdleLeftFlow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleLeft:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mBrand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mOperator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mBillLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBillLeft:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mCallTimeTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeTotal:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mCallTimeLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeLeft:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mProvinceCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mProvinceCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mCityCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCityCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/common/g/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/miui/common/g/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
