.class public Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source ""


# static fields
.field private static final EXTRA_ANDROID_TEXT:Ljava/lang/String; = "android.text"

.field private static final EXTRA_ANDROID_TITLE:Ljava/lang/String; = "android.title"

.field private static final PATTERN_MESSAGE:Ljava/lang/String; = "^(.*?)(\\((.*?)\\))?\\s*:\\s*(.*)"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isMMMoneyFirstOpen:Z

.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mMainHandler:Landroid/os/Handler;

.field private mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

.field private mMessagePattern:Ljava/util/regex/Pattern;

.field private mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;

.field private mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)Lcom/miui/luckymoney/controller/Pipeline;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->isMMMoneyFirstOpen:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->findMoneyByNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->isMMMoneyFirstOpen:Z

    iput-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMainHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    iput-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    const-string/jumbo v0, "^(.*?)(\\((.*?)\\))?\\s*:\\s*(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMessagePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private findMoneyByNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->recursiveFindText(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/util/ArrayList;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private processMMLuckyMoney(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.tencent.mm.plugin.luckymoney.ui.LuckyMoneyDetailUI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->isMMMoneyFirstOpen:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->isMMMoneyFirstOpen:Z

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$2;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "com.tencent.mm.plugin.luckymoney.ui."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$3;

    invoke-direct {v2, p0, v0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$3;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-wide/16 v4, 0x1c2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private processQQLuckyMoney(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "cooperation.qwallet.plugin.QWalletPluginProxyActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;

    invoke-direct {v0, p0, v1}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$1;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x514

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private processQQNotification(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/Notification;

    if-nez v6, :cond_2

    return-void

    :cond_2
    iget-object v3, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-static {v3}, Lcom/miui/a/c/d;->btP(Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getIntent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btR()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/luckymoney/utils/NotificationUtil;->getUniqueNotificationId()I

    move-result v1

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static/range {v0 .. v5}, Lcom/miui/common/b/n;->aIP(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :try_start_0
    new-instance v0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;

    new-instance v1, Lcom/miui/luckymoney/model/Notification;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/miui/luckymoney/utils/NotificationUtil;->getUniqueNotificationId()I

    move-result v3

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/miui/luckymoney/model/Notification;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;-><init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    :goto_0
    if-nez v4, :cond_5

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to create qqmessage object"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    invoke-static {p0, v4}, Lcom/miui/luckymoney/service/QQGroupCollector;->collect(Landroid/content/Context;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V

    iget v0, v4, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    invoke-virtual {v4}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isHongbao()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "qq message is lucky money message, continue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$4;

    invoke-direct {v1, p0, v4}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$4;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    invoke-direct {p0, p1}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->processTypeUnknownNotification(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private processTypeUnknownNotification(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v10, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMessagePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string/jumbo v0, ""

    move-object v1, v0

    :goto_0
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "[QQ\u7ea2\u5305]"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/Notification;

    iget-object v3, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_6

    return-void

    :cond_6
    invoke-static {v7}, Lcom/miui/luckymoney/service/QQGroupCollector;->findQQGroupByName(Ljava/lang/String;)Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;

    move-result-object v5

    iget-object v0, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "android.text"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, ": "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v0, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.title"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/miui/a/c/d;->btP(Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getIntent"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btR()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v5, :cond_8

    const-string/jumbo v0, "uintype"

    iget v1, v5, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->type:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "uin"

    iget-object v1, v5, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "uinname"

    iget-object v1, v5, Lcom/miui/luckymoney/service/QQGroupCollector$QQGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "open_chatfragment"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "entrance"

    const/4 v1, 0x6

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_8
    invoke-virtual {p0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/luckymoney/utils/NotificationUtil;->getUniqueNotificationId()I

    move-result v1

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static/range {v0 .. v5}, Lcom/miui/common/b/n;->aIP(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v1, Lcom/miui/luckymoney/model/Notification;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/luckymoney/utils/NotificationUtil;->getUniqueNotificationId()I

    move-result v2

    invoke-direct {v1, v0, v2, v4, v6}, Lcom/miui/luckymoney/model/Notification;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V

    :try_start_0
    new-instance v0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;

    invoke-direct {v0, p0, v1}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;-><init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    :goto_1
    if-nez v4, :cond_9

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to create qqmessage object"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_9
    iput-boolean v10, v4, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->treatedAsGroupMessage:Z

    iput-object v7, v4, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isHongbao()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "qq message is lucky money message, continue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$5;

    invoke-direct {v1, p0, v4}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$5;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Lcom/miui/luckymoney/model/message/Impl/QQMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void

    :cond_b
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private recordMoney()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->getTodayQQMoney()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getTodayMMMoney()J

    move-result-wide v2

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordQQMoney(J)V

    invoke-static {v2, v3}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordMMMoney(J)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/luckymoney/config/CommonConfig;->setLastRecordMoneyTime(J)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0, v4, v5}, Lcom/miui/luckymoney/config/CommonConfig;->setTodayQQMoney(J)V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0, v4, v5}, Lcom/miui/luckymoney/config/CommonConfig;->setTodayMMMoney(J)V

    return-void
.end method

.method private recursiveFindText(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    if-lez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-ge v0, p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    invoke-direct {p0, v1, v2, p3}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->recursiveFindText(Landroid/view/accessibility/AccessibilityNodeInfo;ILjava/util/ArrayList;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private registerPhoneStateMonitor()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->registerListener(Landroid/telephony/PhoneStateListener;)V

    return-void
.end method

.method private unregisterPhoneStateMonitor()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;

    invoke-static {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor;->unregisterListener(Landroid/telephony/PhoneStateListener;)V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    const/16 v4, 0x20

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/luckymoney/config/CommonConfig;->getLastRecordMoneyTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->recordMoney()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->processQQNotification(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->processQQLuckyMoney(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->processMMLuckyMoney(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/luckymoney/model/config/impl/QQConfiguration;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/model/config/impl/QQConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v1, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;

    iget-object v2, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mMessageConfig:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {v1, v2}, Lcom/miui/luckymoney/ui/view/GeneralMessageViewCreator;-><init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V

    invoke-static {v0, v1}, Lcom/miui/luckymoney/controller/Pipeline;->create(Lcom/miui/luckymoney/model/config/BaseConfiguration;Lcom/miui/luckymoney/ui/view/messageview/MessageViewCreator;)Lcom/miui/luckymoney/controller/Pipeline;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    new-instance v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;-><init>(Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;)V

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mPhoneStateMonitor:Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService$PhoneRingMonitor;

    invoke-static {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->registerPhoneStateMonitor()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->unregisterPhoneStateMonitor()V

    iget-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    invoke-static {v0}, Lcom/miui/luckymoney/controller/Pipeline;->recycle(Lcom/miui/luckymoney/controller/Pipeline;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/luckymoney/service/LuckyMoneyAccessibilityService;->mQQPipeline:Lcom/miui/luckymoney/controller/Pipeline;

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method
