.class Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$2;
.super Ljava/lang/Object;
.source "BookAssistantView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->postMainBindAir(Lcom/miui/calendar/event/schema/FlightEvent;)V
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$2;->val$event:Lcom/miui/calendar/event/schema/FlightEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView$2;->val$event:Lcom/miui/calendar/event/schema/FlightEvent;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;->access$300(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantView;Lcom/miui/calendar/event/schema/FlightEvent;)V

    return-void
.end method
