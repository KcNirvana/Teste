.class Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;
.super Ljava/lang/Object;
.source "FavSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-static {v2}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->access$000(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->access$100(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->access$100(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "key_fav_authorize_changed"

    invoke-static {v0, v1, v4}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;->setFavOpened(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "key_favorite"

    invoke-static {v0, v1, v4}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v4}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchFavoriteCatcher(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->access$002(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;J)J

    return v4

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)V

    goto :goto_0
.end method
