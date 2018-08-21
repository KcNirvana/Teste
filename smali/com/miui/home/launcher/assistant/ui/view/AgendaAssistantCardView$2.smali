.class Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;
.super Ljava/lang/Object;
.source "AgendaAssistantCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/calendar/api/CalendarAPI;->viewAgendaActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_button_click_agenda"

    const-string/jumbo v2, "5"

    const-string/jumbo v3, "AgendaAssistantCardView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/calendar/api/CalendarAPI;->viewEditEventActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_button_click_agenda"

    const-string/jumbo v2, "5"

    const-string/jumbo v3, "AgendaAssistantCardView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.personalassistant.AGENDA_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b090113 -> :sswitch_0
        0x1b090114 -> :sswitch_1
        0x1b090183 -> :sswitch_3
        0x1b090271 -> :sswitch_2
    .end sparse-switch
.end method
