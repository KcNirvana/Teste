.class public abstract Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;
.super Ljava/lang/Object;
.source "DayTriggerStrategy.java"

# interfaces
.implements Lcom/autonavi/its/protocol/log/chaos/ITriggerStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calendarToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static createRandomDay()I
    .locals 3

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x6

    add-int/lit8 v0, v2, 0x5

    return v0
.end method

.method private static getNextTriggerDate(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getSavedCelendar()Ljava/util/Calendar;
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->getTriggerDateStoreKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/autonavi/its/common/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v5, "\\|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method protected abstract getTriggerDateStoreKey()Ljava/lang/String;
.end method

.method protected abstract getTriggerDaySpanStoreKey()Ljava/lang/String;
.end method

.method public getTriggeredSpan()I
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->getTriggerDaySpanStoreKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/its/common/PreferenceUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->createRandomDay()I

    move-result v0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->getTriggerDaySpanStoreKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/autonavi/its/common/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    :cond_0
    return v0
.end method

.method public isTriggered()Z
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->getSavedCelendar()Ljava/util/Calendar;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->getTriggerDateStoreKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->getTriggeredSpan()I

    move-result v4

    invoke-static {v4}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->getNextTriggerDate(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/autonavi/its/common/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->getTriggerDateStoreKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->getTriggeredSpan()I

    move-result v4

    invoke-static {v4}, Lcom/autonavi/its/protocol/log/chaos/DayTriggerStrategy;->getNextTriggerDate(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/autonavi/its/common/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
