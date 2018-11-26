.class final Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->-wrap0(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->-get3(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->-get1(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/luckymoney/config/CommonConfig;->setFastOpenEnable(Z)V

    goto :goto_0
.end method
