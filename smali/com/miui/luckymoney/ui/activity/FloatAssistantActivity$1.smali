.class final Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/high16 v3, 0x10000000

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "close"

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatWindowFuncClick(Ljava/lang/String;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-get0(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/luckymoney/ui/activity/LuckyAlarmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v0, "alarm"

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatWindowFuncClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-wrap1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-wrap3(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V

    const-string/jumbo v0, "expression"

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatWindowFuncClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-wrap1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->startShoopAgainActivity()V

    const-string/jumbo v0, "alipay_shoop"

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatWindowFuncClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-wrap0(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->startCmdLuckyActivity()V

    const-string/jumbo v0, "wechat_shake"

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatWindowFuncClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-wrap1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "close"

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatWindowFuncClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-wrap1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "intent"

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-get1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-get1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->componentNames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-get1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->errorText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->startActivitybyComponent(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-get1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-get1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-get1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-get1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-get1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;

    move-result-object v1

    iget-wide v2, v1, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$Config;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatWindowHot(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-wrap1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-get0(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v0, "settings"

    invoke-static {v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFloatWindowFuncClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;->-wrap1(Lcom/miui/luckymoney/ui/activity/FloatAssistantActivity;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0025
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
