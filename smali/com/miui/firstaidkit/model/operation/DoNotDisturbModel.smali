.class public Lcom/miui/firstaidkit/model/operation/DoNotDisturbModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "DoNotDisturbModel"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/operation/DoNotDisturbModel;->setDelayOptimized(Z)V

    const-string/jumbo v0, "do_not_disturb"

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/operation/DoNotDisturbModel;->setTrackStr(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/DoNotDisturbModel;->getTrackStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_ignore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/operation/DoNotDisturbModel;->setTrackIgnoreStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/DoNotDisturbModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070706

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x2d

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/DoNotDisturbModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070705

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/DoNotDisturbModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070704

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignore()V
    .locals 0

    return-void
.end method

.method public optimize(Landroid/app/Activity;)V
    .locals 4

    const-string/jumbo v0, ""

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DoNotDisturbModel"

    const-string/jumbo v1, "optimize isSupported: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.android.settings.Settings$MiuiSilentModeAcivity"

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.settings"

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v0, 0x64

    invoke-static {p1, v1, v0}, Lcom/miui/common/b/k;->aIq(Landroid/app/Activity;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070712

    invoke-static {p1, v0}, Lcom/miui/common/b/o;->aIX(Landroid/content/Context;I)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "DoNotDisturbModel"

    const-string/jumbo v1, "optimize isSupported: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.android.settings.dndmode.DoNotDisturbModeActivity"

    goto :goto_0
.end method

.method public scan()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/DoNotDisturbModel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/firstaidkit/model/operation/DoNotDisturbModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/firstaidkit/model/operation/DoNotDisturbModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->isSilenceModeEnable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
