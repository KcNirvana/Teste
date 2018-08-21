.class public Lcom/miui/calendar/event/loader/BirthdayEventLoader;
.super Ljava/lang/Object;
.source "BirthdayEventLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadBirthdayEvent(Landroid/content/Context;Ljava/util/Calendar;I)Ljava/util/List;
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

    invoke-static {v2}, Lcom/miui/calendar/event/loader/BirthdayEventLoader;->parseBirthdayEvent(Lcom/miui/calendar/event/schema/Event;)Lcom/miui/calendar/event/schema/BaseEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static parseBirthdayEvent(Lcom/miui/calendar/event/schema/Event;)Lcom/miui/calendar/event/schema/BaseEvent;
    .locals 2

    iget-object v0, p0, Lcom/miui/calendar/event/schema/Event;->mHasEP:Lcom/miui/calendar/event/schema/HasEP;

    invoke-virtual {v0}, Lcom/miui/calendar/event/schema/HasEP;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/miui/calendar/event/schema/BirthdayEvent;->parseBirthdayEvent(Lcom/miui/calendar/event/schema/Event;)Lcom/miui/calendar/event/schema/BirthdayEvent;

    move-result-object v0

    goto :goto_0
.end method
