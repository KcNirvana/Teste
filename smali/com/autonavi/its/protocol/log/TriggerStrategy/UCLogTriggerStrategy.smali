.class public Lcom/autonavi/its/protocol/log/TriggerStrategy/UCLogTriggerStrategy;
.super Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;
.source "UCLogTriggerStrategy.java"


# static fields
.field private static final TRIGGER_DATE:Ljava/lang/String; = "uc_log_trigger_strategy_trigger_date"

.field private static final TRIGGER_DAY_SPAN:Ljava/lang/String; = "uc_log_trigger_strategy_day_span"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTriggerDateStoreKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "uc_log_trigger_strategy_trigger_date"

    return-object v0
.end method

.method protected getTriggerDaySpanStoreKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "uc_log_trigger_strategy_day_span"

    return-object v0
.end method
