.class public Lcom/miui/calendar/event/schema/TrainEvent;
.super Lcom/miui/calendar/event/schema/BaseEvent;
.source "TrainEvent.java"


# static fields
.field public static final ARR_CITY:Ljava/lang/String; = "arr_city"

.field public static final ARR_STATION:Ljava/lang/String; = "arr_station"

.field public static final BERTHS:[Ljava/lang/String;

.field public static final CARRIAGE_NUMS:[Ljava/lang/String;

.field public static final DEFAULT_TIME:Ljava/lang/String; = "00:00:00"

.field public static final DEP_CITY:Ljava/lang/String; = "dep_city"

.field public static final DEP_DATE:Ljava/lang/String; = "dep_date"

.field public static final DEP_STATION:Ljava/lang/String; = "dep_station"

.field public static final DEP_TIME:Ljava/lang/String; = "dep_time"

.field public static final PASSENGERS:[Ljava/lang/String;

.field public static final SEAT_NUMS:[Ljava/lang/String;

.field public static final SEAT_TYPES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CalThd:D:TrainEvent"

.field public static final TRAIN_NUM:Ljava/lang/String; = "train_num"


# instance fields
.field public arrCity:Ljava/lang/String;

.field public arrStation:Ljava/lang/String;

.field public depCity:Ljava/lang/String;

.field public depDate:Ljava/lang/String;

.field public depStation:Ljava/lang/String;

.field public depTime:Ljava/lang/String;

.field public passengers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/TrainPassenger;",
            ">;"
        }
    .end annotation
.end field

.field public trainNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "passenger"

    aput-object v1, v0, v2

    const-string/jumbo v1, "passenger_1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "passenger_2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/calendar/event/schema/TrainEvent;->PASSENGERS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "carriage_num"

    aput-object v1, v0, v2

    const-string/jumbo v1, "carriage_num_1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "carriage_num_2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/calendar/event/schema/TrainEvent;->CARRIAGE_NUMS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "seat_type"

    aput-object v1, v0, v2

    const-string/jumbo v1, "seat_type_1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "seat_type_2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/calendar/event/schema/TrainEvent;->SEAT_TYPES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "seat_num"

    aput-object v1, v0, v2

    const-string/jumbo v1, "seat_num_1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "seat_num_2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/calendar/event/schema/TrainEvent;->SEAT_NUMS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "berth"

    aput-object v1, v0, v2

    const-string/jumbo v1, "berth_1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "berth_2"

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/calendar/event/schema/TrainEvent;->BERTHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/calendar/event/schema/BaseEvent;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/calendar/event/schema/TrainEvent;->passengers:Ljava/util/List;

    return-void
.end method

.method public static parseTrainEvent(Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)Lcom/miui/calendar/event/schema/TrainEvent;
    .locals 6

    :try_start_0
    new-instance v2, Lcom/miui/calendar/event/schema/TrainEvent;

    invoke-direct {v2}, Lcom/miui/calendar/event/schema/TrainEvent;-><init>()V

    const/4 v4, 0x4

    iput v4, v2, Lcom/miui/calendar/event/schema/TrainEvent;->eventType:I

    invoke-static {v2, p0, p1}, Lcom/miui/calendar/event/schema/TrainEvent;->fillBaseEvent(Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)V

    const-string/jumbo v4, "dep_date"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/calendar/event/schema/TrainEvent;->depDate:Ljava/lang/String;

    const-string/jumbo v4, "dep_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/calendar/event/schema/TrainEvent;->depTime:Ljava/lang/String;

    iget-object v4, v2, Lcom/miui/calendar/event/schema/TrainEvent;->depTime:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "00:00:00"

    iput-object v4, v2, Lcom/miui/calendar/event/schema/TrainEvent;->depTime:Ljava/lang/String;

    :cond_0
    const-string/jumbo v4, "dep_city"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/calendar/event/schema/TrainEvent;->depCity:Ljava/lang/String;

    const-string/jumbo v4, "dep_station"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/calendar/event/schema/TrainEvent;->depStation:Ljava/lang/String;

    const-string/jumbo v4, "arr_city"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/calendar/event/schema/TrainEvent;->arrCity:Ljava/lang/String;

    const-string/jumbo v4, "arr_station"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/calendar/event/schema/TrainEvent;->arrStation:Ljava/lang/String;

    const-string/jumbo v4, "train_num"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/calendar/event/schema/TrainEvent;->trainNum:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    sget-object v4, Lcom/miui/calendar/event/schema/TrainEvent;->PASSENGERS:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    new-instance v3, Lcom/miui/calendar/event/schema/TrainPassenger;

    invoke-direct {v3}, Lcom/miui/calendar/event/schema/TrainPassenger;-><init>()V

    sget-object v4, Lcom/miui/calendar/event/schema/TrainEvent;->PASSENGERS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/calendar/event/schema/TrainPassenger;->name:Ljava/lang/String;

    sget-object v4, Lcom/miui/calendar/event/schema/TrainEvent;->CARRIAGE_NUMS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/calendar/event/schema/TrainPassenger;->carriageNum:Ljava/lang/String;

    sget-object v4, Lcom/miui/calendar/event/schema/TrainEvent;->SEAT_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/calendar/event/schema/TrainPassenger;->seatType:Ljava/lang/String;

    sget-object v4, Lcom/miui/calendar/event/schema/TrainEvent;->SEAT_NUMS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/calendar/event/schema/TrainPassenger;->seatNum:Ljava/lang/String;

    sget-object v4, Lcom/miui/calendar/event/schema/TrainEvent;->BERTHS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/calendar/event/schema/TrainPassenger;->berth:Ljava/lang/String;

    iget-object v4, v3, Lcom/miui/calendar/event/schema/TrainPassenger;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/miui/calendar/event/schema/TrainPassenger;->carriageNum:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/miui/calendar/event/schema/TrainPassenger;->seatType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/miui/calendar/event/schema/TrainPassenger;->seatNum:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/miui/calendar/event/schema/TrainPassenger;->berth:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, v2, Lcom/miui/calendar/event/schema/TrainEvent;->passengers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "CalThd:D:TrainEvent"

    const-string/jumbo v5, "parseTrainEvent()"

    invoke-static {v4, v5, v0}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TrainEvent{trainNum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/TrainEvent;->trainNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", depDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/TrainEvent;->depDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", depTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/TrainEvent;->depTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", depCity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/TrainEvent;->depCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", depStation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/TrainEvent;->depStation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", arrCity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/TrainEvent;->arrCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", arrStation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/TrainEvent;->arrStation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", passengers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/TrainEvent;->passengers:Ljava/util/List;

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
