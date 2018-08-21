.class Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;
.super Ljava/lang/Object;
.source "TeamsSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/TeamsSelectActivity;->updateWorldCupUI(Lcom/miui/personalassistant/model/BaseBallTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

.field final synthetic val$mIcon:Landroid/widget/ImageView;

.field final synthetic val$mViewAdded:Landroid/widget/ImageView;

.field final synthetic val$team:Lcom/miui/personalassistant/model/BaseBallTeam;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Lcom/miui/personalassistant/model/BaseBallTeam;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;->val$team:Lcom/miui/personalassistant/model/BaseBallTeam;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;->val$mViewAdded:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;->val$mIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;->val$team:Lcom/miui/personalassistant/model/BaseBallTeam;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;->val$mViewAdded:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;->val$mIcon:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$500(Lcom/miui/personalassistant/ui/TeamsSelectActivity;Lcom/miui/personalassistant/model/BaseBallTeam;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$600(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$700(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$2;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$800(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V

    return-void
.end method
