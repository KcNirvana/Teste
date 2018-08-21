.class Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$2;
.super Ljava/lang/Object;
.source "ShoppingSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->showRemoveAuthorizeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "key_shopping_authorize_changed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "key_shopping_authorize"

    invoke-static {v0, v1, v3}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "key_shopping"

    invoke-static {v0, v1, v3}, Lcom/miui/personalassistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/miui/personalassistant/util/ContentCatcherUtil;->switchShoppingCatcher(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->access$100(Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;)Lmiui/widget/SlidingButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$2;->this$0:Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
