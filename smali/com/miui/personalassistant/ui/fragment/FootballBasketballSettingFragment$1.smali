.class Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;
.super Ljava/lang/Object;
.source "FootballBasketballSettingFragment.java"

# interfaces
.implements Lmiui/widget/DynamicListView$RearrangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Lcom/miui/personalassistant/ui/widget/SettingListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$400(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;Lmiui/widget/DynamicListView;Z)V

    return-void
.end method

.method public onDragStart()V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Lcom/miui/personalassistant/ui/widget/SettingListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$400(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;Lmiui/widget/DynamicListView;Z)V

    return-void
.end method

.method public onOrderChanged(II)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v2, "FootballBasketballSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onOrderChanged from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$100(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1b0b052c

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Lcom/miui/personalassistant/ui/widget/SettingListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/personalassistant/ui/widget/SettingListView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/miui/personalassistant/model/BallDataManager;->getInstance()Lcom/miui/personalassistant/model/BallDataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-virtual {v3}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v4}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v5}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/miui/personalassistant/model/BallDataManager;->setFavBallTeams(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v2, "key_football"

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment$1;->this$0:Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;

    invoke-static {v4}, Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/FootballBasketballSettingFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "7"

    :goto_0
    invoke-static {v3, v2}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v2, "8"

    goto :goto_0
.end method
