.class final Lcom/miui/luckymoney/ui/view/HandsUpMessageView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/HandsUpMessageView;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/HandsUpMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/HandsUpMessageView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->-get0(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/HandsUpMessageView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->-get0(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/HandsUpMessageView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->-get0(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/HandsUpMessageView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->-get0(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getSoundResId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$3;->this$0:Lcom/miui/luckymoney/ui/view/HandsUpMessageView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->-get1(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)Lcom/miui/luckymoney/ui/view/HeadsUpView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->dismiss()V

    const-string/jumbo v0, "settings"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyMoneyNoti(Ljava/lang/String;Z)V

    return-void
.end method
