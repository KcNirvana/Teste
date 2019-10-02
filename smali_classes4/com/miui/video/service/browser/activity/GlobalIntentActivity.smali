.class public Lcom/miui/video/service/browser/activity/GlobalIntentActivity;
.super Lcom/miui/video/base/core/CoreActivity;
.source "GlobalIntentActivity.java"


# static fields
.field private static final ACTION_STEP0_PERMISSION_DETAIL:Ljava/lang/String; = "PERMISSION_DETAIL"

.field private static final ACTION_STEP1_CLAUSE:Ljava/lang/String; = "ACTION_STEP1_CLAUSE"

.field private static final ACTION_STEP2_GRANT_PERMISSION:Ljava/lang/String; = "ACTION_STEP2_GRANT_PERMISSION"

.field private static final ACTION_STEP3_PARSE_ACTION:Ljava/lang/String; = "ACTION_STEP3_PARSE_ACTION"

.field private static final REQUEST_PRIVACY_CODE:I = 0x10

.field public static final SCHEME_GMV:Ljava/lang/String; = "gmv"

.field private static final TAG:Ljava/lang/String; = "GlobalIntentActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/base/core/CoreActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/browser/activity/GlobalIntentActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/service/browser/activity/GlobalIntentActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private parseAction(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->finish()V

    return v1

    :cond_0
    new-instance v0, Lcom/miui/video/framework/uri/LinkEntity;

    invoke-virtual {p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/video/framework/uri/LinkEntity;-><init>(Landroid/net/Uri;)V

    const-string v2, "parseAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLinkUri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/video/framework/uri/LinkEntity;->getLinkUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->parseScheme(Lcom/miui/video/framework/uri/LinkEntity;)Z

    :cond_1
    return v1
.end method

.method private parseScheme(Lcom/miui/video/framework/uri/LinkEntity;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "mv"

    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "gmv"

    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string v0, "Linker"

    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "h5internal"

    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/video/framework/uri/LinkEntity;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/miui/video/framework/uri/CUtils;->getRef(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/video/framework/uri/CUtils;->getInstance()Lcom/miui/video/framework/uri/CUtils;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "Intent"

    :cond_4
    move-object v6, p1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/miui/video/framework/uri/CUtils;->openLink(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_2
    return v0
.end method


# virtual methods
.method public initValue()V
    .locals 3

    const-string v0, "PERMISSION_DETAIL"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne p1, v2, :cond_1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/base/common/statistics/MiDevUtils;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->getInstance()Lcom/miui/video/framework/utils/statistics/StatisticsUtils;

    move-result-object v2

    const-class v3, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    invoke-static {v3}, Lcom/miui/video/base/internal/SingletonManager;->get(Ljava/lang/Class;)Lcom/miui/video/base/common/internal/SingletonClass;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;

    invoke-virtual {v3}, Lcom/miui/video/base/statistics/event/WidgetEventDispatcher;->asStatisticsHandler()Lcom/miui/video/framework/utils/statistics/IStatisticsListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/video/framework/utils/statistics/StatisticsUtils;->setListener(Lcom/miui/video/framework/utils/statistics/IStatisticsListener;)V

    const-string v2, "ACTION_STEP2_GRANT_PERMISSION"

    invoke-virtual {p0, v2, v1, v0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v2, "ACTION_STEP2_GRANT_PERMISSION"

    invoke-virtual {p0, v2, v1, v0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x4d3

    if-ne p1, v2, :cond_2

    const-string v2, "ACTION_STEP2_GRANT_PERMISSION"

    invoke-virtual {p0, v2, v1, v0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x904

    if-ne p2, v2, :cond_3

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->onPermissionDetailResult(Landroid/app/Activity;)V

    const-string v2, "ACTION_STEP1_CLAUSE"

    invoke-virtual {p0, v2, v1, v0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/base/core/CoreActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/miui/video/framework/uri/LinkEntity;

    invoke-virtual {p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/framework/uri/LinkEntity;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/miui/video/framework/uri/LinkEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/miui/video/framework/uri/CUtils;->getRef(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/video/framework/uri/PageInfoUtils;->setRef(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/video/base/core/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/miui/video/service/R$layout;->activity_intent:I

    invoke-virtual {p0, p1}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->setContentView(I)V

    iget-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setTranslucentStatus(Landroid/content/Context;Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    new-instance v1, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$3;-><init>(Lcom/miui/video/service/browser/activity/GlobalIntentActivity;)V

    new-instance v2, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;

    invoke-direct {v2, p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$4;-><init>(Lcom/miui/video/service/browser/activity/GlobalIntentActivity;)V

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/video/base/utils/PermissionUtils;->onRequestPermissionsResult(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/base/core/CoreActivity;->onResume()V

    invoke-virtual {p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->initValue()V

    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const-string p2, "PERMISSION_DETAIL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->needShowPermissionDetail(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x903

    invoke-static {p0, p1}, Lcom/miui/video/base/utils/PermissionUtils;->startPermissionDetailForResult(Landroid/app/Activity;I)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "ACTION_STEP1_CLAUSE"

    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p2, "ACTION_STEP1_CLAUSE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p0}, Lcom/miui/video/base/utils/PrivacyUtils;->isPrivacyAllowed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ACTION_STEP2_GRANT_PERMISSION"

    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/miui/video/base/utils/PrivacyUtils;->hasPrivacyApi()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/miui/video/base/utils/PrivacyUtils;->openMIUIPrivacyDialog(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$1;

    invoke-direct {p2, p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$1;-><init>(Lcom/miui/video/service/browser/activity/GlobalIntentActivity;)V

    new-instance p3, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$2;

    invoke-direct {p3, p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity$2;-><init>(Lcom/miui/video/service/browser/activity/GlobalIntentActivity;)V

    invoke-static {p1, p2, p3}, Lcom/miui/video/base/utils/PrivacyUtils;->openNonMIUIPrivacyDialog(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    const-string p2, "ACTION_STEP2_GRANT_PERMISSION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->isAllPermissionGrant(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ACTION_STEP3_PARSE_ACTION"

    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/video/base/utils/PermissionUtils;->requestAllPermissions(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_6
    const-string p2, "ACTION_STEP3_PARSE_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->parseAction(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/miui/video/service/browser/activity/GlobalIntentActivity;->finish()V

    :cond_7
    :goto_0
    return-void
.end method
