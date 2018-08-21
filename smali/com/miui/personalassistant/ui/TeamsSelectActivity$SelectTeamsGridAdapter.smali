.class Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "TeamsSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/TeamsSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectTeamsGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1500(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Lcom/miui/personalassistant/model/BaseBallTeam;
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1500(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/model/BaseBallTeam;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->getItem(I)Lcom/miui/personalassistant/model/BaseBallTeam;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;->this$0:Lcom/miui/personalassistant/ui/TeamsSelectActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity;->access$1600(Lcom/miui/personalassistant/ui/TeamsSelectActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1b0400b1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;-><init>(Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;->bindEntry(I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/TeamsSelectActivity$SelectTeamsGridAdapter$ViewHolder;

    goto :goto_0
.end method
