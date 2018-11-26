.class public Lcom/miui/luckymoney/model/config/impl/MiTalkConfiguration;
.super Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/model/config/impl/DefaultConfiguration;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getHeadsUpViewBgResId()I
    .locals 1

    const v0, 0x7f02020c

    return v0
.end method

.method public getLockScreenViewBgResId()I
    .locals 1

    const v0, 0x7f02023f

    return v0
.end method

.method public getLuckyMoneyEventKeyPostfix()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "mitalk"

    return-object v0
.end method

.method public getNotifyType()Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/config/impl/MiTalkConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/model/config/impl/MiTalkConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getMiliaoLuckyWarningEnable()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/model/config/impl/MiTalkConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeEffective()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/config/impl/MiTalkConfiguration;->isDNDModeNoEverything()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;->NONE:Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/luckymoney/model/config/impl/MiTalkConfiguration;->getNotifyTypeByMode()Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;

    move-result-object v0

    return-object v0
.end method
