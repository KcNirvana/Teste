.class public Lcom/autonavi/its/protocol/log/TriggerStrategy/DownLoadConfigureTriggerStrategy;
.super Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;
.source "DownLoadConfigureTriggerStrategy.java"


# static fields
.field private static final TRIGGER_DATE:Ljava/lang/String; = "down_configure_trigger_strategy_trigger_date"

.field private static final TRIGGER_DAY_SPAN:Ljava/lang/String; = "down_configure_trigger_strategy_day_span"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTriggerDateStoreKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "down_configure_trigger_strategy_trigger_date"

    return-object v0
.end method

.method protected getTriggerDaySpanStoreKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "down_configure_trigger_strategy_day_span"

    return-object v0
.end method

.method public isTriggered()Z
    .locals 2

    invoke-super {p0}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->isTriggered()Z

    move-result v0

    invoke-static {}, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;->getInstance()Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;->readConfig()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
