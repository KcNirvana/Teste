.class Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;Lcom/miui/calendar/event/schema/BaseEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$1;->val$item:Lcom/miui/calendar/event/schema/BaseEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$1;->this$0:Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;->access$000(Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/BookAssistantAdapter$1;->val$item:Lcom/miui/calendar/event/schema/BaseEvent;

    invoke-static {v0, v1}, Lcom/miui/calendar/api/CalendarAPI;->viewEventDetail(Landroid/content/Context;Lcom/miui/calendar/event/schema/BaseEvent;)V

    return-void
.end method
