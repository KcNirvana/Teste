.class Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem$1;
.super Ljava/lang/Object;
.source "AgendaAssistantItem.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/module/receiver/AgendaAssistantReceiver$IUpdateLisener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCached()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->access$000(Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem$1;->this$0:Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;->access$000(Lcom/miui/home/launcher/assistant/module/carditem/AgendaAssistantItem;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method
