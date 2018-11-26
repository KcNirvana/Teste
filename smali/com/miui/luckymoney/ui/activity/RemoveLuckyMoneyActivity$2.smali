.class final Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/activity/RemoveLuckyMoneyActivity;->finish()V

    return-void
.end method
