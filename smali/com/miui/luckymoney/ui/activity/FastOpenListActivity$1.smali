.class final Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->-get2(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/FastOpenConfig;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/luckymoney/config/FastOpenConfig;->contains(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v2}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->-get0(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)I

    move-result v3

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->-set0(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;I)I

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->-wrap1(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {v1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->-get2(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/FastOpenConfig;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/miui/luckymoney/config/FastOpenConfig;->set(Ljava/lang/String;Z)Z

    return-void

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method
