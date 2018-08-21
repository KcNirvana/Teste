.class public Lcom/miui/calendar/event/schema/FlightEvent;
.super Lcom/miui/calendar/event/schema/BaseEvent;
.source "FlightEvent.java"


# static fields
.field public static final ARR_AIRPORT:Ljava/lang/String; = "arr_airport"

.field public static final ARR_CITY:Ljava/lang/String; = "arr_city"

.field public static final ARR_DATE:Ljava/lang/String; = "arr_date"

.field public static final ARR_TIME:Ljava/lang/String; = "arr_time"

.field public static final DEFAULT_TIME:Ljava/lang/String; = "00:00:00"

.field public static final DEP_AIRPORT:Ljava/lang/String; = "dep_airport"

.field public static final DEP_CITY:Ljava/lang/String; = "dep_city"

.field public static final DEP_DATE:Ljava/lang/String; = "dep_date"

.field public static final DEP_TIME:Ljava/lang/String; = "dep_time"

.field public static final FLIGHT_COMPANY:Ljava/lang/String; = "flight_company"

.field public static final FLIGHT_NUM:Ljava/lang/String; = "flight_num"

.field public static final PASSENGERS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CalThd:D:FlightEvent"


# instance fields
.field public arrAirport:Ljava/lang/String;

.field public arrCity:Ljava/lang/String;

.field public arrDate:Ljava/lang/String;

.field public arrTerminal:Ljava/lang/String;

.field public arrTime:Ljava/lang/String;

.field public depAirport:Ljava/lang/String;

.field public depCity:Ljava/lang/String;

.field public depDate:Ljava/lang/String;

.field public depTerminal:Ljava/lang/String;

.field public depTime:Ljava/lang/String;

.field public flightCompany:Ljava/lang/String;

.field public flightNum:Ljava/lang/String;

.field public flightType:I

.field public isAdjusted:Z

.field public passengers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "passenger"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "passenger_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "passenger_2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/calendar/event/schema/FlightEvent;->PASSENGERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/calendar/event/schema/BaseEvent;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->passengers:Ljava/util/List;

    return-void
.end method

.method public static fillFlightEvent(Lcom/miui/calendar/event/schema/FlightEvent;Lcom/miui/calendar/event/flight/FlightSchema;)Lcom/miui/calendar/event/schema/FlightEvent;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightNo:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->flightNum:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightCompany:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->flightCompany:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDeptimePlanDate:Ljava/lang/String;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->depDate:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDeptimePlanDate:Ljava/lang/String;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->depTime:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDep:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightDepAirport:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightHTerminal:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->depTerminal:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrtimePlanDate:Ljava/lang/String;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->arrDate:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrtimePlanDate:Ljava/lang/String;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->arrTime:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArr:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->arrCity:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightArrAirport:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    iget-object v0, p1, Lcom/miui/calendar/event/flight/FlightSchema;->FlightTerminal:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/calendar/event/schema/FlightEvent;->arrTerminal:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/miui/calendar/event/schema/FlightEvent;->isAdjusted:Z

    return-object p0
.end method

.method public static parseFlightEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;I)Lcom/miui/calendar/event/schema/FlightEvent;
    .locals 11

    :try_start_0
    new-instance v2, Lcom/miui/calendar/event/schema/FlightEvent;

    invoke-direct {v2}, Lcom/miui/calendar/event/schema/FlightEvent;-><init>()V

    const/4 v7, 0x3

    iput v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->eventType:I

    invoke-static {v2, p1, p2}, Lcom/miui/calendar/event/schema/FlightEvent;->fillBaseEvent(Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)V

    iput p3, v2, Lcom/miui/calendar/event/schema/FlightEvent;->flightType:I

    const-string/jumbo v7, "dep_date"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->depDate:Ljava/lang/String;

    const-string/jumbo v7, "dep_time"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->depTime:Ljava/lang/String;

    iget-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->depTime:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "00:00:00"

    iput-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->depTime:Ljava/lang/String;

    :cond_0
    const-string/jumbo v7, "flight_num"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->flightNum:Ljava/lang/String;

    const-string/jumbo v7, "flight_company"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->flightCompany:Ljava/lang/String;

    const-string/jumbo v7, "dep_city"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    const-string/jumbo v7, "dep_airport"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    const-string/jumbo v7, "arr_date"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->arrDate:Ljava/lang/String;

    const-string/jumbo v7, "arr_time"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->arrTime:Ljava/lang/String;

    const-string/jumbo v7, "arr_city"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->arrCity:Ljava/lang/String;

    const-string/jumbo v7, "arr_airport"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    sget-object v8, Lcom/miui/calendar/event/schema/FlightEvent;->PASSENGERS:[Ljava/lang/String;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v5, v8, v7

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v2, Lcom/miui/calendar/event/schema/FlightEvent;->passengers:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    iget-wide v8, p1, Lcom/miui/calendar/event/schema/Event;->mId:J

    const-string/jumbo v7, "flight_info"

    invoke-static {p0, v8, v9, v7}, Lcom/miui/calendar/util/EPUtils;->getEPJson(Landroid/content/Context;JLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    const-string/jumbo v7, "value"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    const-class v8, Lcom/miui/calendar/event/flight/FlightSchema;

    invoke-virtual {v7, v3, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/calendar/event/flight/FlightSchema;

    invoke-virtual {v4, p0}, Lcom/miui/calendar/event/flight/FlightSchema;->adjustFlightSchema(Landroid/content/Context;)V

    invoke-static {v2, v4}, Lcom/miui/calendar/event/schema/FlightEvent;->fillFlightEvent(Lcom/miui/calendar/event/schema/FlightEvent;Lcom/miui/calendar/event/flight/FlightSchema;)Lcom/miui/calendar/event/schema/FlightEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v7, "CalThd:D:FlightEvent"

    const-string/jumbo v8, "parseFlightEvent()"

    invoke-static {v7, v8, v0}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FlightEvent{flightType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->flightType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flightNum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->flightNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flightCompany=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->flightCompany:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", depDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->depDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", depTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->depTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", depCity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", depAirport=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->depAirport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", depTerminal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->depTerminal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", arrDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->arrDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", arrTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->arrTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", arrCity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->arrCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", arrAirport=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->arrAirport:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", arrTerminal=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->arrTerminal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isAdjusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->isAdjusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", passengers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/FlightEvent;->passengers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/miui/calendar/event/schema/BaseEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
