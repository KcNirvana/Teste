.class Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;
.super Ljava/lang/Object;
.source "TeamsSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/TeamsSelectActivity;->addTabViewToContainer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

.field final synthetic val$position:I

.field final synthetic val$teams:Lcom/miui/personalassistant/model/BaseBallTab;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity;ILandroid/widget/TextView;Lcom/miui/personalassistant/model/BaseBallTab;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    iput p2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->val$position:I

    iput-object p3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->val$textView:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->val$teams:Lcom/miui/personalassistant/model/BaseBallTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->val$position:I

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$900(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)I

    move-result v2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1000(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$900(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->val$textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    iget v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->val$position:I

    invoke-static {v0, v2}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$902(Lcom/miui/personalassistant/ui/TeamsSelectActivity;I)I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->val$teams:Lcom/miui/personalassistant/model/BaseBallTab;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/BaseBallTab;->isWorldCup()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1100(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->val$teams:Lcom/miui/personalassistant/model/BaseBallTab;

    invoke-static {v0, v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1200(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Lcom/miui/personalassistant/model/BaseBallTab;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1100(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$3;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1300(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
