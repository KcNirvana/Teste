.class public Lcom/miui/calendar/event/flight/FlightUtils;
.super Ljava/lang/Object;
.source "FlightUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CalThd:D:FlightUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/calendar/event/flight/FlightUtils;->decodeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/calendar/event/flight/FlightUtils;->onError(Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/miui/calendar/event/flight/FlightUtils;->saveFlightInfo(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public static adjustFlightEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/api/CalendarAPI$RequestFun;Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;)V
    .locals 6

    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/miui/calendar/event/schema/FlightEvent;

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "invalid flight event!"

    invoke-static {p3, v4}, Lcom/miui/calendar/event/flight/FlightUtils;->onError(Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;Ljava/lang/String;)V

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/miui/calendar/event/schema/FlightEvent;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "date"

    iget-object v5, v0, Lcom/miui/calendar/event/schema/FlightEvent;->depDate:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "fnum"

    iget-object v5, v0, Lcom/miui/calendar/event/schema/FlightEvent;->flightNum:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "http://api.comm.miui.com/calendar/api/flight"

    invoke-static {p0, v4, v1}, Lcom/miui/calendar/util/RequestUtils;->getSignUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;

    invoke-direct {v2, p0, p3, v0}, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;-><init>(Landroid/content/Context;Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;Lcom/miui/calendar/event/schema/FlightEvent;)V

    invoke-interface {p2, v3, v2}, Lcom/miui/calendar/api/CalendarAPI$RequestFun;->doRequest(Ljava/lang/String;Lcom/miui/calendar/api/CalendarAPI$ResponseListener;)V

    return-void
.end method

.method private static decodeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v3, "(\\\\u(\\p{XDigit}{4}))"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v0, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static onError(Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "CalThd:D:FlightUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static saveFlightInfo(Landroid/content/Context;JLjava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string/jumbo v5, "flight_info"

    invoke-static {p0, p1, p2, v5}, Lcom/miui/calendar/util/EPUtils;->getEPJson(Landroid/content/Context;JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v5, "value"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "name"

    const-string/jumbo v6, "flight_info"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    const-string/jumbo v5, "CalThd:D:FlightUtils"

    const-string/jumbo v6, "saveFlightInfo(): insert"

    invoke-static {v5, v6}, Lcom/miui/calendar/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/miui/calendar/util/EPUtils;->URI_EXTENDED_PROPERTIES_WITH_MIUI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "CalThd:D:FlightUtils"

    const-string/jumbo v6, "saveFlightInfo()"

    invoke-static {v5, v6, v0}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "CalThd:D:FlightUtils"

    const-string/jumbo v6, "saveFlightInfo(): update"

    invoke-static {v5, v6}, Lcom/miui/calendar/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/miui/calendar/util/EPUtils;->URI_EXTENDED_PROPERTIES_WITH_MIUI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
