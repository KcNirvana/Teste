.class final Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$5;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->-get1(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setFastOpenEnable(Z)V

    return-void
.end method
