.class public Lcom/miui/calendar/event/schema/BirthdayEvent;
.super Lcom/miui/calendar/event/schema/BaseEvent;
.source "BirthdayEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CalThd:D:BirthdayEvent"


# instance fields
.field public isAllDay:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/calendar/event/schema/BaseEvent;-><init>()V

    return-void
.end method

.method public static parseBirthdayEvent(Lcom/miui/calendar/event/schema/Event;)Lcom/miui/calendar/event/schema/BirthdayEvent;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/miui/calendar/event/schema/BirthdayEvent;

    invoke-direct {v0}, Lcom/miui/calendar/event/schema/BirthdayEvent;-><init>()V

    const/4 v3, 0x2

    iput v3, v0, Lcom/miui/calendar/event/schema/BirthdayEvent;->eventType:I

    const/4 v3, 0x0

    invoke-static {v0, p0, v3}, Lcom/miui/calendar/event/schema/BirthdayEvent;->fillBaseEvent(Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)V

    iget-boolean v3, p0, Lcom/miui/calendar/event/schema/Event;->mAllDay:Z

    iput-boolean v3, v0, Lcom/miui/calendar/event/schema/BirthdayEvent;->isAllDay:Z

    iget-object v3, p0, Lcom/miui/calendar/event/schema/Event;->mTitle:Ljava/lang/String;

    iput-object v3, v0, Lcom/miui/calendar/event/schema/BirthdayEvent;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "CalThd:D:BirthdayEvent"

    const-string/jumbo v4, "parseBirthdayEvent()"

    invoke-static {v3, v4, v1}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BirthdayEvent{isAllDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/calendar/event/schema/BirthdayEvent;->isAllDay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/BirthdayEvent;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/miui/calendar/event/schema/BaseEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
