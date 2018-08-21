.class Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$1;
.super Ljava/lang/Object;
.source "AgendaAssistantCardView.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateViewLisener;


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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateView()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->access$002(Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/AgendaAssistantCardView;->loadCardData(Z)V

    return-void
.end method
