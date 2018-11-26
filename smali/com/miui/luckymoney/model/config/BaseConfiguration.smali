.class public abstract Lcom/miui/luckymoney/model/config/BaseConfiguration;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private context:Landroid/content/Context;

.field protected mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/config/BaseConfiguration;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    return-void
.end method


# virtual methods
.method public context()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getHeadsUpViewBgResId()I
.end method

.method public abstract getLockScreenViewBgResId()I
.end method

.method public abstract getLuckyMoneyEventKeyPostfix()Ljava/lang/String;
.end method

.method public abstract getNotifyType()Lcom/miui/luckymoney/model/config/BaseConfiguration$NotifyType;
.end method

.method public abstract getSoundResId()Ljava/lang/Integer;
.end method

.method public abstract justForGroupMessage()Z
.end method

.method public abstract needPlaySource()Z
.end method
