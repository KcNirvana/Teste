.class Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "TeamsSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->bindEntry(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;

.field final synthetic val$team:Lcom/miui/personalassistant/model/BaseBallTeam;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;Lcom/miui/personalassistant/model/BaseBallTeam;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;->this$2:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;->val$team:Lcom/miui/personalassistant/model/BaseBallTeam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;->this$2:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->this$1:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;->val$team:Lcom/miui/personalassistant/model/BaseBallTeam;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;->this$2:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;

    iget-object v2, v2, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mViewAdded:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;->this$2:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;

    iget-object v3, v3, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$500(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Lcom/miui/personalassistant/model/BaseBallTeam;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;->this$2:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->this$1:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$600(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;->this$2:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->this$1:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$700(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;->this$2:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->this$1:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    iget-object v0, v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$800(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    return-void
.end method
