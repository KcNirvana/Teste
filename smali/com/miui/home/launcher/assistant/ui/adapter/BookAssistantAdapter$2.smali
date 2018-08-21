.class Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$2;
.super Ljava/lang/Object;
.source "BookAssistantAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

.field final synthetic val$item:Lcom/miui/calendar/event/schema/BaseEvent;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;Lcom/miui/calendar/event/schema/BaseEvent;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$2;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$2;->val$item:Lcom/miui/calendar/event/schema/BaseEvent;

    iput p3, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$2;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$2;->val$item:Lcom/miui/calendar/event/schema/BaseEvent;

    invoke-static {v0, v1}, Lcom/miui/calendar/api/CalendarAPI;->viewEventDetail(Landroid/content/Context;Lcom/miui/calendar/event/schema/BaseEvent;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$2;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_item_click_book"

    const-string/jumbo v2, "18"

    const-string/jumbo v3, "BookAssistantCardView"

    iget v4, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$2;->val$position:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$2;->val$position:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
