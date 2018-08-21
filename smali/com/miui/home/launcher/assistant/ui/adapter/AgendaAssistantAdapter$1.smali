.class Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$1;
.super Ljava/lang/Object;
.source "AgendaAssistantAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;

.field final synthetic val$item:Lcom/miui/calendar/event/schema/BaseEvent;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;Lcom/miui/calendar/event/schema/BaseEvent;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$1;->val$item:Lcom/miui/calendar/event/schema/BaseEvent;

    iput p3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->access$300(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$1;->val$item:Lcom/miui/calendar/event/schema/BaseEvent;

    invoke-static {v0, v1}, Lcom/miui/calendar/api/CalendarAPI;->viewEventDetail(Landroid/content/Context;Lcom/miui/calendar/event/schema/BaseEvent;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;->access$300(Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_item_click_agenda"

    const-string/jumbo v2, "5"

    const-string/jumbo v3, "AgendaAssistantCardView"

    const-string/jumbo v4, ""

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AgendaAssistantAdapter$1;->val$position:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
