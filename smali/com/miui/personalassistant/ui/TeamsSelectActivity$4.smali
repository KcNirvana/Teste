.class Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;
.super Ljava/lang/Object;
.source "TeamsSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/TeamsSelectActivity;->addRecentViewToContainer(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

.field final synthetic val$icon:Landroid/widget/ImageView;

.field final synthetic val$iconAdded:Landroid/widget/ImageView;

.field final synthetic val$recentBall:Lcom/miui/personalassistant/model/BaseBallTeam;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Lcom/miui/personalassistant/model/BaseBallTeam;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->val$recentBall:Lcom/miui/personalassistant/model/BaseBallTeam;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->val$iconAdded:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->val$icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v1, "card_click_addteam_football"

    invoke-static {v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->val$recentBall:Lcom/miui/personalassistant/model/BaseBallTeam;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->val$iconAdded:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->val$icon:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$500(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Lcom/miui/personalassistant/model/BaseBallTeam;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$600(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$700(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1300(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$900(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1400(Lcom/miui/personalassistant/ui/TeamsSelectActivity;I)Lcom/miui/personalassistant/model/BaseBallTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/BaseBallTab;->isWorldCup()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$4;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v1, v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1200(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Lcom/miui/personalassistant/model/BaseBallTab;)V

    :cond_0
    return-void
.end method
