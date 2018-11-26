.class final Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->-get0(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->-get0(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getSoundResId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/utils/NotificationUtil;->stopNotification(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenMessageView$2;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenMessageView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/LockScreenMessageView;->-get1(Lcom/miui/luckymoney/ui/view/LockScreenMessageView;)Lcom/miui/luckymoney/ui/view/LockScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/LockScreenView;->dismiss()V

    const-string/jumbo v0, "close"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyMoneyLockedNoti(Ljava/lang/String;Z)V

    return-void
.end method
