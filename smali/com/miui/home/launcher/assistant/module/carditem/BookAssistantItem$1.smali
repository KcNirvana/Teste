.class Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem$1;
.super Ljava/lang/Object;
.source "BookAssistantItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;
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
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/event/schema/BaseEvent;)I
    .locals 7

    const/4 v0, 0x1

    const/4 v6, 0x7

    iget v1, p1, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    if-eq v1, v6, :cond_1

    iget v1, p2, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    if-eq v1, v6, :cond_1

    iget-wide v2, p1, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    iget-wide v4, p2, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p1, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    if-ne v1, v6, :cond_2

    iget v1, p2, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    if-eq v1, v6, :cond_2

    iget-wide v2, p1, Lcom/miui/calendar/event/schema/BaseEvent;->endTimeMillis:J

    iget-wide v4, p2, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    :cond_2
    iget v1, p1, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    if-eq v1, v6, :cond_3

    iget v1, p2, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    if-ne v1, v6, :cond_3

    iget-wide v2, p2, Lcom/miui/calendar/event/schema/BaseEvent;->endTimeMillis:J

    iget-wide v4, p1, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_3
    iget v1, p1, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    if-ne v1, v6, :cond_4

    iget v1, p2, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    if-ne v1, v6, :cond_4

    iget-wide v2, p1, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    iget-wide v4, p2, Lcom/miui/calendar/event/schema/BaseEvent;->startTimeMillis:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/calendar/event/schema/BaseEvent;

    check-cast p2, Lcom/miui/calendar/event/schema/BaseEvent;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/assistant/module/carditem/BookAssistantItem$1;->compare(Lcom/miui/calendar/event/schema/BaseEvent;Lcom/miui/calendar/event/schema/BaseEvent;)I

    move-result v0

    return v0
.end method
