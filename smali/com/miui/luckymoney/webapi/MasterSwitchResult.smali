.class public Lcom/miui/luckymoney/webapi/MasterSwitchResult;
.super Lcom/miui/luckymoney/webapi/RequestResult;
.source ""


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private alarmSwitch:Z

.field private defaultFrequency:J

.field private endTime:J

.field private floatSwitch:Z

.field private hotFrequency:J

.field private masterSwitch:Z

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "MasterSwitchResult"

    sput-object v0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/webapi/RequestResult;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/miui/luckymoney/webapi/RequestResult;->doParseJson(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "masterSwitch"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->masterSwitch:Z

    const-string/jumbo v0, "floatSwitch"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->floatSwitch:Z

    const-string/jumbo v0, "alarmSwitch"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->alarmSwitch:Z

    const-string/jumbo v0, "defaultFrequency"

    const-wide/32 v2, 0xa4cb800

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->defaultFrequency:J

    const-string/jumbo v0, "startTime"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->startTime:J

    const-string/jumbo v0, "endTime"

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->endTime:J

    const-string/jumbo v0, "hotFrequency"

    const-wide/32 v2, 0x1499700

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->hotFrequency:J

    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->saveToLocal()V

    return-void
.end method

.method public saveToLocal()V
    .locals 6

    const-wide/32 v4, 0x4d3f6400

    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/common/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->getJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setMasterSwitchConfig(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->masterSwitch:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->masterSwitch:Z

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setXiaomiLuckyMoneyEnable(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->floatSwitch:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->floatSwitch:Z

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setDesktopFloatWindowEnable(Z)V

    :cond_2
    iget-boolean v1, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->alarmSwitch:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->alarmSwitch:Z

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckyAlarmEnable(Z)V

    :cond_3
    iget-wide v2, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->defaultFrequency:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->setDefaultUpdateFrequency(J)V

    iget-wide v2, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->startTime:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->setHotStartTime(J)V

    iget-wide v2, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->endTime:J

    invoke-virtual {v0, v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->setHotEndTime(J)V

    iget-wide v2, p0, Lcom/miui/luckymoney/webapi/MasterSwitchResult;->hotFrequency:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->setHotFrequency(J)V

    return-void
.end method
