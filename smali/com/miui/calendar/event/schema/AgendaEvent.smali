.class public Lcom/miui/calendar/event/schema/AgendaEvent;
.super Lcom/miui/calendar/event/schema/BaseEvent;
.source "AgendaEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CalThd:D:AgendaEvent"


# instance fields
.field public isAllDay:Z

.field public location:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/calendar/event/schema/BaseEvent;-><init>()V

    return-void
.end method

.method public static parseAgendaEvent(Lcom/miui/calendar/event/schema/Event;)Lcom/miui/calendar/event/schema/AgendaEvent;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Lcom/miui/calendar/event/schema/AgendaEvent;

    invoke-direct {v0}, Lcom/miui/calendar/event/schema/AgendaEvent;-><init>()V

    const/4 v3, 0x1

    iput v3, v0, Lcom/miui/calendar/event/schema/AgendaEvent;->eventType:I

    const/4 v3, 0x0

    invoke-static {v0, p0, v3}, Lcom/miui/calendar/event/schema/AgendaEvent;->fillBaseEvent(Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/event/schema/Event;Lorg/json/JSONObject;)V

    iget-boolean v3, p0, Lcom/miui/calendar/event/schema/Event;->mAllDay:Z

    iput-boolean v3, v0, Lcom/miui/calendar/event/schema/AgendaEvent;->isAllDay:Z

    iget-object v3, p0, Lcom/miui/calendar/event/schema/Event;->mTitle:Ljava/lang/String;

    iput-object v3, v0, Lcom/miui/calendar/event/schema/AgendaEvent;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/calendar/event/schema/Event;->mLocation:Ljava/lang/String;

    iput-object v3, v0, Lcom/miui/calendar/event/schema/AgendaEvent;->location:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "CalThd:D:AgendaEvent"

    const-string/jumbo v4, "parseAgendaEvent()"

    invoke-static {v3, v4, v1}, Lcom/miui/calendar/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AgendaEvent{isAllDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/calendar/event/schema/AgendaEvent;->isAllDay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/AgendaEvent;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", location=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/calendar/event/schema/AgendaEvent;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
