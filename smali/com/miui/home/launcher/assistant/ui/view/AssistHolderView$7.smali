.class Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$7;
.super Ljava/lang/Object;
.source "AssistHolderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->initAi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.miui.voiceassist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "voice_assist_start_from_key"

    const-string/jumbo v2, "com.miui.personalassistant"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "xiaoai_click"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackSingleEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
