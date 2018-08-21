.class Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;
.super Ljava/lang/Object;
.source "BookAssistantView.java"

# interfaces
.implements Lcom/miui/calendar/api/CalendarAPI$OnAdjustFlightEventResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->bindAirplaneCard(Lcom/miui/calendar/event/schema/FlightEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

.field final synthetic val$event:Lcom/miui/calendar/event/schema/FlightEvent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;->val$event:Lcom/miui/calendar/event/schema/FlightEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "BookAssistantView"

    invoke-static {v0, p1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;->val$event:Lcom/miui/calendar/event/schema/FlightEvent;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V

    return-void
.end method

.method public onResponse(Lcom/miui/calendar/event/schema/BaseEvent;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/miui/calendar/event/schema/FlightEvent;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;->val$event:Lcom/miui/calendar/event/schema/FlightEvent;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/miui/calendar/event/schema/FlightEvent;->isAdjusted:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "BookAssistantView"

    const-string/jumbo v2, "onResponse event.isAdjusted = true"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;->val$event:Lcom/miui/calendar/event/schema/FlightEvent;

    iget-object v2, v2, Lcom/miui/calendar/event/schema/FlightEvent;->depCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->access$200(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$1;->val$event:Lcom/miui/calendar/event/schema/FlightEvent;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->access$100(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V

    goto :goto_0
.end method
