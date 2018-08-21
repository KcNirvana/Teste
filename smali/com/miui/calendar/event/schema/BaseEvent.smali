.class public Lcom/miui/calendar/event/schema/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/event/schema/BaseEvent$EventType;
    }
.end annotation


# static fields
.field public static final EVENT_CREATE_TIME:Ljava/lang/String; = "event_create_time"

.field public static final MESSAGE_TIME:Ljava/lang/String; = "message_time"

.field private static final TAG:Ljava/lang/String; = "CalThd:D:BaseEvent"


# instance fields
.field public createTimeMillis:J

.field public endTimeMillis:J

.field public eventType:I

.field public id:J

.field public startTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillBaseEvent(Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)V
    .locals 6

    iget-wide v2, p1, Lcom/miui/calendar/event/schema/Event;->mId:J

    iput-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->id:J

    iget-wide v2, p1, Lcom/miui/calendar/event/schema/Event;->startMillis:J

    iput-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    iget-wide v2, p1, Lcom/miui/calendar/event/schema/Event;->endMillis:J

    iput-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->endTimeMillis:J

    if-eqz p2, :cond_0

    const-string/jumbo v2, "event_create_time"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->createTimeMillis:J

    iget-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->createTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-string/jumbo v2, "message_time"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->createTimeMillis:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CalThd:D:BaseEvent"

    const-string/jumbo v3, "fillBaseEvent()"

    invoke-static {v2, v3, v0}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BaseEvent{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->endTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/calendar/event/schema/BaseEvent;->createTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
