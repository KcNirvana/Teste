.class Lcom/miui/personalassistant/ui/CardSettingsActivity$7;
.super Ljava/lang/Object;
.source "CardSettingsActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$OnSettingItemOpetateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/CardSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemOpetate(Lcom/miui/personalassistant/model/SettingItem;Z)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "key_favorite"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1, p2}, Lcom/miui/personalassistant/favorite/util/FavUtil;->setStatusFromSettings(Landroid/content/Context;Z)V

    :cond_1
    :goto_1
    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$300(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$600(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->dataSetChanged()V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$700(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->dataSetChanged()V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$300(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$300(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$800(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1b0b038c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$1200(Lcom/miui/personalassistant/ui/CardSettingsActivity;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "key_shopping"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1, p2}, Lcom/miui/personalassistant/shopping/util/ShoppingUtil;->setStatusFromSettings(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "key_payment"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1, p2}, Lcom/miui/payment/PaymentPrefs;->onPaymentCardEnabledChanged(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$100(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$300(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/miui/personalassistant/ui/CardSettingsActivity$7;->this$0:Lcom/miui/personalassistant/ui/CardSettingsActivity;

    invoke-static {v1}, Lcom/miui/personalassistant/ui/CardSettingsActivity;->access$800(Lcom/miui/personalassistant/ui/CardSettingsActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x1b0b038d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method
