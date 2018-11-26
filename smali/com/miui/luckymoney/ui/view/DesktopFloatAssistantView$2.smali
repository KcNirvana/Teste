.class final Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$2;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$2;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get2(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getFloatTipsStartTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatTips(Ljava/lang/String;Z)V

    const-string/jumbo v0, "FloatAssistantView"

    const-string/jumbo v1, "click float tips"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$2;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-wrap2(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$2;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get3(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$2;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->-get3(Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatWindowClick()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView$2;->this$0:Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/DesktopFloatAssistantView;->removeFloatView()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0180
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
