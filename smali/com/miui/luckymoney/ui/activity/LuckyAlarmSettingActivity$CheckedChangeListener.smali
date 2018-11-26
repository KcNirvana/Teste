.class Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity$CheckedChangeListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity$CheckedChangeListener;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iput-object p2, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity$CheckedChangeListener;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity$CheckedChangeListener;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/LuckyAlarmSettingActivity$CheckedChangeListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/miui/luckymoney/config/CommonConfig;->setLuckyAlarmPackageOpen(Ljava/lang/String;Z)V

    return-void
.end method
