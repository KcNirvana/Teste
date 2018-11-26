.class final Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->-wrap0(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    const-class v3, Lcom/miui/luckymoney/ui/activity/LuckySettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/common/b/n;->aIJ(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->finish()V

    return-void
.end method
