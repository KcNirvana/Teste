.class public Lcom/miui/calendar/event/loader/GasBillEventLoader;
.super Ljava/lang/Object;
.source "GasBillEventLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CalThd:D:GasBillEventLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadGasBillEvent(Landroid/content/Context;Ljava/util/Calendar;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Calendar;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/calendar/util/TimeUtils;->getJulianDay(Ljava/util/Calendar;)I

    move-result v4

    invoke-static {p0, v4, p2}, Lcom/miui/calendar/event/loader/EventLoader;->load(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/calendar/event/schema/Event;

    invoke-static {p0, v0}, Lcom/miui/calendar/event/loader/GasBillEventLoader;->parseGasBillEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;)Lcom/miui/calendar/event/schema/BaseEvent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static parseGasBillEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;)Lcom/miui/calendar/event/schema/BaseEvent;
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/miui/calendar/event/schema/Event;->mHasEP:Lcom/miui/calendar/event/schema/HasEP;

    invoke-virtual {v4}, Lcom/miui/calendar/event/schema/HasEP;->getEventType()I

    move-result v4

    const/16 v5, 0xe

    if-eq v4, v5, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-wide v4, p1, Lcom/miui/calendar/event/schema/Event;->mId:J

    const-string/jumbo v6, "gas_bill_info"

    invoke-static {p0, v4, v5, v6}, Lcom/miui/calendar/util/EPUtils;->getEPJson(Landroid/content/Context;JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v4, "CalThd:D:GasBillEventLoader"

    const-string/jumbo v5, "parseGasBillEvent() epJson is null"

    invoke-static {v4, v5}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    const-string/jumbo v4, "value"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "CalThd:D:GasBillEventLoader"

    const-string/jumbo v5, "parseGasBillEvent(): gasBillInfoStr is empty"

    invoke-static {v4, v5}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "CalThd:D:GasBillEventLoader"

    const-string/jumbo v5, "parseGasBillEvent()"

    invoke-static {v4, v5, v0}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/miui/calendar/event/schema/GasBillEvent;->parseGasBillEvent(Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/GasBillEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method
