.class public Lcom/miui/calendar/event/loader/CreditEventLoader;
.super Ljava/lang/Object;
.source "CreditEventLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CalThd:D:CreditEventLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadCreditEvent(Landroid/content/Context;Ljava/util/Calendar;I)Ljava/util/List;
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

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/calendar/event/schema/Event;

    invoke-static {p0, v2}, Lcom/miui/calendar/event/loader/CreditEventLoader;->parseCreditEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;)Lcom/miui/calendar/event/schema/BaseEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static parseCreditEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;)Lcom/miui/calendar/event/schema/BaseEvent;
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/miui/calendar/event/schema/Event;->mHasEP:Lcom/miui/calendar/event/schema/HasEP;

    invoke-virtual {v4}, Lcom/miui/calendar/event/schema/HasEP;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    :goto_0
    return-object v3

    :cond_0
    iget-wide v4, p1, Lcom/miui/calendar/event/schema/Event;->mId:J

    const-string/jumbo v6, "credit_info"

    invoke-static {p0, v4, v5, v6}, Lcom/miui/calendar/util/EPUtils;->getEPJson(Landroid/content/Context;JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v4, "CalThd:D:CreditEventLoader"

    const-string/jumbo v5, "parseCreditEvent() epJson is null"

    invoke-static {v4, v5}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "CalThd:D:CreditEventLoader"

    const-string/jumbo v5, "parseCreditEvent(): creditInfoStr is empty"

    invoke-static {v4, v5}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "CalThd:D:CreditEventLoader"

    const-string/jumbo v5, "parseCreditEvent()"

    invoke-static {v4, v5, v1}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/miui/calendar/event/schema/CreditEvent;->parseCreditEvent(Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/CreditEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method
