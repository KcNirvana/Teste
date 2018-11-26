.class public Lcom/miui/luckymoney/service/LuckyAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private resIntent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/miui/luckymoney/service/LuckyAlarmReceiver;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->resIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/high16 v9, 0x10000000

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->resIntent:Landroid/content/Intent;

    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "activityName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u6d3b\u52a8"

    :cond_0
    const-string/jumbo v1, "null"

    sget-object v4, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receive LuckyAlarm:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "url"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v1, "url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v3, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->resIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->resIntent:Landroid/content/Intent;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->resIntent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/miui/luckymoney/utils/PackageUtil;->getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->resIntent:Landroid/content/Intent;

    invoke-static {p1, v4, v7}, Lcom/miui/luckymoney/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    :cond_2
    const-string/jumbo v4, "intent"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "intent"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->resIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->resIntent:Landroid/content/Intent;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->resIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmEnable()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    invoke-virtual {v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmPackageOpen(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeEffective()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDModeLevel()I

    move-result v4

    sget v5, Lcom/miui/luckymoney/config/DoNotDisturbConstants;->DND_LEVEL_NO_EVERYTHING:I

    if-ne v4, v5, :cond_6

    return-void

    :cond_6
    invoke-static {p1}, Lcom/miui/luckymoney/utils/ScreenUtil;->powerOnScreen(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckyAlarmSoundEnable()Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f060001

    invoke-static {p1, v2}, Lcom/miui/luckymoney/utils/NotificationUtil;->playNotification(Landroid/content/Context;I)V

    :cond_7
    invoke-static {p1}, Lcom/miui/luckymoney/utils/ScreenUtil;->isScreenLocked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;

    invoke-direct {v2, p1}, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$1;-><init>(Lcom/miui/luckymoney/service/LuckyAlarmReceiver;Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;->setPositiveClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\u5373\u5c06\u5f00\u59cb"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/miui/luckymoney/ui/view/AlarmLockScreenView;->show(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v8}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyAlarmLockedNoti(Ljava/lang/String;Z)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.luckymoney.ACTION_UPDATE_ALARM_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/common/b/f;->aHS()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_8
    new-instance v1, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;

    invoke-direct {v1, p1}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/miui/luckymoney/service/LuckyAlarmReceiver$2;-><init>(Lcom/miui/luckymoney/service/LuckyAlarmReceiver;Landroid/content/Context;Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;)V

    invoke-virtual {v1, v2}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->setPositiveOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u5373\u5c06\u5f00\u59cb"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/miui/luckymoney/ui/view/AlarmHeadsUpView;->show(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyAlarmReceiver;->resIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyAlarmNoti(Ljava/lang/String;Z)V

    goto :goto_1
.end method
