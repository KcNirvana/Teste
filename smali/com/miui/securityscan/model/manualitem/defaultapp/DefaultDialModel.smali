.class public Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultDialModel;
.super Lcom/miui/securityscan/model/manualitem/DefaultAppModel;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/manualitem/DefaultAppModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "default_dial"

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultDialModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method protected initModel()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultDialModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070763

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultDialModel;->setTypeName(Ljava/lang/String;)V

    return-void
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultDialModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.contacts"

    invoke-static {v0, v1}, Lcom/miui/common/b/i;->aIk(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public scan()V
    .locals 4

    sget-boolean v0, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultDialModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultDialModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/e;->aHM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v1, "tel"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultDialModel;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.android.contacts"

    invoke-static {v1, v0, v2}, Lcom/miui/common/b/i;->aIj(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "DefaultDialModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDefault = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/manualitem/defaultapp/DefaultDialModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1
.end method
