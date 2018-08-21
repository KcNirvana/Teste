.class public Lcom/miui/calendar/event/loader/TripEventLoader;
.super Ljava/lang/Object;
.source "TripEventLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/event/loader/TripEventLoader$TravelType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CalThd:D:TripEventLoader"

.field private static final TRAVEL_TYPE:Ljava/lang/String; = "travel_type"

.field private static final TRIP_EVENT_EP_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "travel_info"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "movie_info"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "hotel_info"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/calendar/event/loader/TripEventLoader;->TRIP_EVENT_EP_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadNextTripEvent(Landroid/content/Context;I)Lcom/miui/calendar/event/schema/BaseEvent;
    .locals 10

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/calendar/util/TimeUtils;->getJulianDay(Ljava/util/Calendar;)I

    move-result v4

    invoke-static {p0, v4, p1}, Lcom/miui/calendar/event/loader/EventLoader;->load(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/calendar/event/schema/Event;

    invoke-static {p0, v0, v3}, Lcom/miui/calendar/event/loader/TripEventLoader;->parseTripEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/BaseEvent;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-wide v6, v2, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method public static loadTripEvent(Landroid/content/Context;Ljava/util/Calendar;I)Ljava/util/List;
    .locals 7
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

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/miui/calendar/util/TimeUtils;->getJulianDay(Ljava/util/Calendar;)I

    move-result v5

    invoke-static {p0, v5, p2}, Lcom/miui/calendar/event/loader/EventLoader;->load(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move-object v3, v4

    :cond_1
    return-object v3

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/calendar/event/schema/Event;

    invoke-static {p0, v0, v4}, Lcom/miui/calendar/event/loader/TripEventLoader;->parseTripEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/BaseEvent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static loadTripEventBookedToday(Landroid/content/Context;I)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-static {v11}, Lcom/miui/calendar/util/TimeUtils;->getJulianDay(Ljava/util/Calendar;)I

    move-result v11

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v11, v1}, Lcom/miui/calendar/event/loader/EventLoader;->load(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    const/4 v10, 0x0

    :cond_1
    :goto_0
    return-object v10

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/calendar/event/schema/Event;

    iget-wide v12, v2, Lcom/miui/calendar/event/schema/Event;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v3, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v11, Lcom/miui/calendar/event/loader/TripEventLoader;->TRIP_EVENT_EP_NAMES:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/miui/calendar/util/EPUtils;->getEPJson(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_5

    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string/jumbo v11, "event_id"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/calendar/event/schema/Event;

    move-object/from16 v0, p0

    invoke-static {v0, v11, v8}, Lcom/miui/calendar/event/loader/TripEventLoader;->parseTripEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/BaseEvent;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-wide v14, v7, Lcom/miui/calendar/event/schema/BaseEvent;->createTimeMillis:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_6

    iget-wide v14, v7, Lcom/miui/calendar/event/schema/BaseEvent;->createTimeMillis:J

    invoke-static {v14, v15}, Lcom/miui/calendar/util/TimeUtils;->isToday(J)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static parseHotelEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/BaseEvent;
    .locals 6

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-wide v4, p1, Lcom/miui/calendar/event/schema/Event;->mId:J

    const-string/jumbo v3, "hotel_info"

    invoke-static {p0, v4, v5, v3}, Lcom/miui/calendar/util/EPUtils;->getEPJson(Landroid/content/Context;JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v3, "CalThd:D:TripEventLoader"

    const-string/jumbo v4, "parseHotelEvent() epJson is null"

    invoke-static {v3, v4}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    const-string/jumbo v3, "value"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "CalThd:D:TripEventLoader"

    const-string/jumbo v4, "parseHotelEvent(): hotelInfoStr is empty"

    invoke-static {v3, v4}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CalThd:D:TripEventLoader"

    const-string/jumbo v4, "parseHotelEvent()"

    invoke-static {v3, v4, v0}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/miui/calendar/event/schema/HotelEvent;->parseHotelEvent(Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/HotelEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method private static parseMovieEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/BaseEvent;
    .locals 6

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-wide v4, p1, Lcom/miui/calendar/event/schema/Event;->mId:J

    const-string/jumbo v3, "movie_info"

    invoke-static {p0, v4, v5, v3}, Lcom/miui/calendar/util/EPUtils;->getEPJson(Landroid/content/Context;JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v3, "CalThd:D:TripEventLoader"

    const-string/jumbo v4, "parseMovieEvent() epJson is null"

    invoke-static {v3, v4}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    const-string/jumbo v3, "value"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "CalThd:D:TripEventLoader"

    const-string/jumbo v4, "parseMovieEvent(): movieInfoStr is empty"

    invoke-static {v3, v4}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CalThd:D:TripEventLoader"

    const-string/jumbo v4, "parseMovieEvent()"

    invoke-static {v3, v4, v0}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/miui/calendar/event/schema/MovieEvent;->parseMovieEvent(Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/MovieEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method private static parseTravelEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/BaseEvent;
    .locals 8

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-wide v6, p1, Lcom/miui/calendar/event/schema/Event;->mId:J

    const-string/jumbo v5, "travel_info"

    invoke-static {p0, v6, v7, v5}, Lcom/miui/calendar/util/EPUtils;->getEPJson(Landroid/content/Context;JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v5, "CalThd:D:TripEventLoader"

    const-string/jumbo v6, "parseTravelEvent() travelEPJson is null"

    invoke-static {v5, v6}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    const-string/jumbo v5, "value"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "CalThd:D:TripEventLoader"

    const-string/jumbo v6, "parseTravelEvent(): travelInfoStr is empty"

    invoke-static {v5, v6}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "CalThd:D:TripEventLoader"

    const-string/jumbo v6, "parseFlightEvent()"

    invoke-static {v5, v6, v0}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "travel_type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v5, "CalThd:D:TripEventLoader"

    const-string/jumbo v6, "parseTravelEvent(): unknown travel type"

    invoke-static {v5, v6}, Lcom/miui/calendar/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, v2, v3}, Lcom/miui/calendar/event/schema/FlightEvent;->parseFlightEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;I)Lcom/miui/calendar/event/schema/FlightEvent;

    move-result-object v4

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v2}, Lcom/miui/calendar/event/schema/TrainEvent;->parseTrainEvent(Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/TrainEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseTripEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/BaseEvent;
    .locals 1

    iget-object v0, p1, Lcom/miui/calendar/event/schema/Event;->mHasEP:Lcom/miui/calendar/event/schema/HasEP;

    invoke-virtual {v0}, Lcom/miui/calendar/event/schema/HasEP;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/miui/calendar/event/loader/TripEventLoader;->parseTravelEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/BaseEvent;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/miui/calendar/event/loader/TripEventLoader;->parseMovieEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/BaseEvent;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2}, Lcom/miui/calendar/event/loader/TripEventLoader;->parseHotelEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/BaseEvent;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
