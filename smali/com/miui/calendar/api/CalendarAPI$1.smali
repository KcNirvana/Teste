.class final Lcom/miui/calendar/api/CalendarAPI$1;
.super Ljava/lang/Object;
.source "CalendarAPI.java"

# interfaces
.implements Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/api/CalendarAPI;->adjustFlightEvent(Landroid/content/Context;Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/api/CalendarAPI$RequestFun;Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

.field final synthetic val$timeMillis:J


# direct methods
.method constructor <init>(JLcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/calendar/api/CalendarAPI$1;->val$timeMillis:J

    iput-object p3, p0, Lcom/miui/calendar/api/CalendarAPI$1;->val$listener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/calendar/api/CalendarAPI$1;->val$listener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/api/CalendarAPI$1;->val$listener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

    invoke-interface {v0, p1}, Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/miui/calendar/event/schema/BaseEvent;)V
    .locals 6

    const-string/jumbo v0, "CalThd:D:CalendarAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adjustFlightEvent() time cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/calendar/api/CalendarAPI$1;->val$timeMillis:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/calendar/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/calendar/api/CalendarAPI$1;->val$listener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/calendar/api/CalendarAPI$1;->val$listener:Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;

    invoke-interface {v0, p1}, Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;->onResponse(Lcom/miui/calendar/event/schema/BaseEvent;)V

    :cond_0
    return-void
.end method
