.class public Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final UNIT_RATE:I = 0x400


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMonthPackage:J

.field private mCurrentMonthRemainedFlow:J

.field private mLastMonthRemainedFlow:J

.field private mMonthUsedFlow:J

.field private mSimName:Ljava/lang/String;

.field private mTotalMonthFlow:J

.field private mTotalRemainedFlow:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCurrentMonthPackage()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mCurrentMonthPackage:J

    return-wide v0
.end method

.method public getCurrentMonthRemainedFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mCurrentMonthRemainedFlow:J

    return-wide v0
.end method

.method public getLastMonthRemainedFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mLastMonthRemainedFlow:J

    return-wide v0
.end method

.method public getMonthUsedFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mMonthUsedFlow:J

    return-wide v0
.end method

.method public getSimName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mSimName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalMonthFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalMonthFlow:J

    return-wide v0
.end method

.method public getTotalRemainedFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalRemainedFlow:J

    return-wide v0
.end method

.method public refreshMiSimFlowData()V
    .locals 6

    const-wide/16 v4, 0x400

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mm_adjust_flow_result"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "totalFlowBalance"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalRemainedFlow:J

    const-string/jumbo v0, "totalFlowSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalMonthFlow:J

    const-string/jumbo v0, "alreadyUsedFlow"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mMonthUsedFlow:J

    const-string/jumbo v0, "lastFlowBalance"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mLastMonthRemainedFlow:J

    const-string/jumbo v0, "curFlowBalance"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mCurrentMonthRemainedFlow:J

    const-string/jumbo v0, "curBasePackageSize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mCurrentMonthPackage:J

    const-string/jumbo v0, "appName"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mSimName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u603b\u5269\u4f59\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalRemainedFlow:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n\u672c\u6708\u603b\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mTotalMonthFlow:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n\u672c\u6708\u5df2\u7528\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mMonthUsedFlow:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n\u4e0a\u6708\u5269\u4f59\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mLastMonthRemainedFlow:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n\u672c\u6708\u5269\u4f59\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mCurrentMonthRemainedFlow:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n\u672c\u6708\u5957\u9910\u6d41\u91cf : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mCurrentMonthPackage:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\nSim\u5361\u540d\u79f0 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/statistic/MiSimHelper;->mSimName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
