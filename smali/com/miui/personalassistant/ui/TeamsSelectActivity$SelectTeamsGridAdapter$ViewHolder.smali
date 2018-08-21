.class Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TeamsSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mIcon:Landroid/widget/ImageView;

.field public mName:Landroid/widget/TextView;

.field public mRoot:Landroid/view/View;

.field public mViewAdded:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->this$1:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b0902bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mRoot:Landroid/view/View;

    const v0, 0x1b0900cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x1b0900ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const v0, 0x1b0902bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mViewAdded:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindEntry(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->this$1:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->getItem(I)Lcom/miui/personalassistant/model/BaseBallTeam;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/BaseBallTeam;->getImageBigUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/ImageUtil;->diplay(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->this$1:Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;

    iget-object v1, v1, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1700(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mViewAdded:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mRoot:Landroid/view/View;

    new-instance v2, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder$1;-><init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;Lcom/miui/personalassistant/model/BaseBallTeam;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mViewAdded:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1
.end method
