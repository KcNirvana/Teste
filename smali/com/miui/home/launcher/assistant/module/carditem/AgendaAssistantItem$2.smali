.class Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem$2;
.super Ljava/lang/Object;
.source "AgendaAssistantItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/calendar/event/schema/BaseEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem$2;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/event/schema/BaseEvent;)I
    .locals 8

    const/4 v3, -0x1

    const/4 v2, 0x1

    move-object v0, p1

    check-cast v0, Lcom/miui/calendar/event/schema/AgendaEvent;

    move-object v1, p2

    check-cast v1, Lcom/miui/calendar/event/schema/AgendaEvent;

    iget-boolean v4, v0, Lcom/miui/calendar/event/schema/AgendaEvent;->isAllDay:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v1, Lcom/miui/calendar/event/schema/AgendaEvent;->isAllDay:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v4, v0, Lcom/miui/calendar/event/schema/AgendaEvent;->isAllDay:Z

    if-nez v4, :cond_2

    iget-boolean v4, v1, Lcom/miui/calendar/event/schema/AgendaEvent;->isAllDay:Z

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    iget-wide v4, p1, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    iget-wide v6, p2, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    iget-wide v4, p1, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    iget-wide v6, p2, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget-wide v4, p1, Lcom/miui/calendar/event/schema/BaseEvent;->endTimeMillis:J

    iget-wide v6, p2, Lcom/miui/calendar/event/schema/BaseEvent;->endTimeMillis:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/calendar/event/schema/BaseEvent;

    check-cast p2, Lcom/miui/calendar/event/schema/BaseEvent;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem$2;->compare(Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/event/schema/BaseEvent;)I

    move-result v0

    return v0
.end method
