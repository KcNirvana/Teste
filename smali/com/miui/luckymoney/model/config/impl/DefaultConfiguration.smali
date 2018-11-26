.class public Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;
.super Lcom/miui/luckymoney/model/config/BaseConfiguration;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getHeadsUpViewBgResId()I
    .locals 1

    const v0, 0x7f02020e

    return v0
.end method

.method public getLockScreenViewBgResId()I
    .locals 1

    const v0, 0x7f020241

    return v0
.end method

.method public getLuckyMoneyEventKeyPostfix()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wechat"

    return-object v0
.end method

.method public getNotifyType()Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getWeChatLuckyWarningEnable()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeEffective()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;->isDNDModeNoEverything()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;->getNotifyTypeByMode()Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    move-result-object v0

    return-object v0
.end method

.method protected getNotifyTypeByMode()Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;
    .locals 1

    sget-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NOTIFICATION:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-object v0
.end method

.method public getSoundResId()Ljava/lang/Integer;
    .locals 2

    sget-object v0, Lcom/miui/luckymoney/config/LuckySoundConstants;->SOUND_RES_ID:[I

    iget-object v1, p0, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckySoundWarningLevel()I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected isDNDModeNoEverything()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDModeLevel()I

    move-result v0

    sget v1, Lcom/miui/luckymoney/config/DoNotDisturbConstants;->DND_LEVEL_NO_EVERYTHING:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public justForGroupMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getOnlyNotiGroupLuckuMoneyConfig()Z

    move-result v0

    return v0
.end method

.method public needPlaySource()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckySoundWarningLevel()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeEffective()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method
