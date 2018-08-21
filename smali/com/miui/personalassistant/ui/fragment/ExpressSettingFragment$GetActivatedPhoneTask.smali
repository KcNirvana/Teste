.class Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;
.super Landroid/os/AsyncTask;
.source "ExpressSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetActivatedPhoneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final SIM_COUNT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;->this$0:Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;-><init>(Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    iget-object v6, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;->this$0:Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;

    invoke-virtual {v6}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ge v4, v6, :cond_1

    invoke-static {v3}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->get(Landroid/content/Context;)Lcom/xiaomi/accountsdk/activate/ActivateManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->blockingGetActivateInfo(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v6, "activate_phone"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "ExpressSettingFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "activated phones size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;->this$0:Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->access$100(Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ExpressSettingFragment"

    const-string/jumbo v1, "activated phones changed !"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;->this$0:Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;

    invoke-static {v0, p1}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->access$200(Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;->this$0:Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/personalassistant/express/Preferences;->setDefaultPhoneNumbers(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;->this$0:Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;)Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment$GetActivatedPhoneTask;->this$0:Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;->access$300(Lcom/miui/personalassistant/ui/fragment/ExpressSettingFragment;)Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
