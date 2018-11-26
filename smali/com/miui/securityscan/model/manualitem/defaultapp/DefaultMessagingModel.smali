.class public Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;
.super Lcom/miui/securityscan/model/manualitem/DefaultAppModel;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "default_messaging"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method protected initModel()V
    .locals 2

    const-string/jumbo v0, "com.android.mms"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;->setDefaultPkgName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070764

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;->setTypeName(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "smsto"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;->setIntentFilter(Landroid/content/IntentFilter;)V

    return-void
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;->getDefaultPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void
.end method

.method public scan()V
    .locals 1

    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultMessagingModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/e;->aHM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;->scan()V

    goto :goto_0
.end method
