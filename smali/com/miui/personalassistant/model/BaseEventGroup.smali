.class public Lcom/miui/personalassistant/model/BaseEventGroup;
.super Ljava/lang/Object;
.source "BaseEventGroup.java"


# instance fields
.field private date:Ljava/lang/String;

.field private event:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/model/BaseEventGroup;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/model/BaseEventGroup;->event:Ljava/util/List;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/model/BaseEventGroup;->date:Ljava/lang/String;

    return-void
.end method

.method public setEvent(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/calendar/event/schema/BaseEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/model/BaseEventGroup;->event:Ljava/util/List;

    return-void
.end method
