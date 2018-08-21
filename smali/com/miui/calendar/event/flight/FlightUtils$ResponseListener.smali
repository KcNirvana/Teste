.class Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;
.super Ljava/lang/Object;
.source "FlightUtils.java"

# interfaces
.implements Lcom/miui/calendar/api/CalendarAPI$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/event/flight/FlightUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlightEvent:Lcom/miui/calendar/event/schema/FlightEvent;

.field private mListener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;Lcom/miui/calendar/event/schema/FlightEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mListener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

    iput-object p3, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mFlightEvent:Lcom/miui/calendar/event/schema/FlightEvent;

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "CalThd:D:FlightUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ResponseListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/calendar/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v6, "data"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/calendar/util/RequestUtils;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/calendar/event/flight/FlightUtils;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "CalThd:D:FlightUtils"

    const-string/jumbo v7, "onResponse()"

    invoke-static {v6, v7}, Lcom/miui/calendar/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mListener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

    const-string/jumbo v7, "flightArray is empty"

    invoke-static {v6, v7}, Lcom/miui/calendar/event/flight/FlightUtils;->access$100(Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mFlightEvent:Lcom/miui/calendar/event/schema/FlightEvent;

    iget-object v6, v6, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mFlightEvent:Lcom/miui/calendar/event/schema/FlightEvent;

    iget-object v7, v7, Lcom/miui/calendar/event/schema/FlightEvent;->arrCity:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mFlightEvent:Lcom/miui/calendar/event/schema/FlightEvent;

    iget-object v8, v8, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mFlightEvent:Lcom/miui/calendar/event/schema/FlightEvent;

    iget-object v9, v9, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    invoke-static {v2, v6, v7, v8, v9}, Lcom/miui/calendar/event/flight/FlightSchema;->getCorrectFlight(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/miui/calendar/event/flight/FlightSchema;

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/calendar/event/flight/FlightSchema;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/miui/calendar/event/flight/FlightSchema;->isFlightSchemaValid()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mListener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid response data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/calendar/event/flight/FlightUtils;->access$100(Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v6, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mListener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parse error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/calendar/event/flight/FlightUtils;->access$100(Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;Ljava/lang/String;)V

    const-string/jumbo v6, "CalThd:D:FlightUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/miui/calendar/event/flight/FlightSchema;->adjustFlightSchema(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mFlightEvent:Lcom/miui/calendar/event/schema/FlightEvent;

    iget-wide v6, v6, Lcom/miui/calendar/event/schema/FlightEvent;->id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_4

    iget-object v6, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mFlightEvent:Lcom/miui/calendar/event/schema/FlightEvent;

    iget-wide v8, v7, Lcom/miui/calendar/event/schema/FlightEvent;->id:J

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v8, v9, v7}, Lcom/miui/calendar/event/flight/FlightUtils;->access$200(Landroid/content/Context;JLjava/lang/String;)V

    :cond_4
    iget-object v6, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mFlightEvent:Lcom/miui/calendar/event/schema/FlightEvent;

    invoke-static {v6, v4}, Lcom/miui/calendar/event/schema/FlightEvent;->fillFlightEvent(Lcom/miui/calendar/event/schema/FlightEvent;Lcom/miui/calendar/event/flight/FlightSchema;)Lcom/miui/calendar/event/schema/FlightEvent;

    iget-object v6, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mListener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mListener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

    iget-object v7, p0, Lcom/miui/calendar/event/flight/FlightUtils$ResponseListener;->mFlightEvent:Lcom/miui/calendar/event/schema/FlightEvent;

    invoke-interface {v6, v7}, Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;->onResponse(Lcom/miui/calendar/event/schema/BaseEvent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
