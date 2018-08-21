.class Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AgendaAssistantReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.personalassistant.AGENDA_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateLisener;

    invoke-interface {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateLisener;->clearCached()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->access$100(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->access$100(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;->access$100(Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateViewLisener;

    invoke-interface {v1}, Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateViewLisener;->updateView()V

    goto :goto_0
.end method
