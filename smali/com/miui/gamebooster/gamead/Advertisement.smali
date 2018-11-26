.class public Lcom/miui/gamebooster/gamead/Advertisement;
.super Lcom/miui/gamebooster/gamead/BaseModel;
.source ""


# static fields
.field private static final serialVersionUID:J = -0x46681868d218a737L


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private adPositionId:Ljava/lang/String;

.field private adPositionInLayout:I

.field private allDownloadNum:J

.field private apkSize:I

.field private appName:Ljava/lang/String;

.field private autoOpen:Z

.field private button:Ljava/lang/String;

.field private buttonNormalColor:I

.field private buttonOpen:Ljava/lang/String;

.field private buttonOpenColor:I

.field private buttonStyle:Ljava/lang/String;

.field private clickMonitorUrls:[Ljava/lang/String;

.field private cta:Ljava/lang/String;

.field private deepLink:Ljava/lang/String;

.field private downloadCountStr:Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:I

.field private isLoaded:Z

.field private landingPageUrl:Ljava/lang/String;

.field private local:Z

.field protected multiImgUrls:[Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private targetType:I

.field private template:I

.field private testId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private viewMonitorUrls:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/BaseModel;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->multiImgUrls:[Ljava/lang/String;

    iput v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonNormalColor:I

    iput v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonOpenColor:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->adPositionInLayout:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/BaseModel;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->multiImgUrls:[Ljava/lang/String;

    iput v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonNormalColor:I

    iput v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonOpenColor:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->adPositionInLayout:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonStyle:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/gamead/Advertisement;->init(Lorg/json/JSONObject;)V

    return-void
.end method

.method private getRef()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->landingPageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->landingPageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "ref"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method private kE(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 6

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    new-instance v2, Lcom/miui/gamebooster/gamead/i;

    invoke-direct {v2, p0, p1}, Lcom/miui/gamebooster/gamead/i;-><init>(Lcom/miui/gamebooster/gamead/Advertisement;Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "com.miui.securitycenter"

    const-string/jumbo v4, "game_booster"

    invoke-virtual {p0}, Lcom/miui/gamebooster/gamead/Advertisement;->getEx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/applicationlock/utils/d;->aei(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GameAdAdapter"

    const-string/jumbo v1, "connect fail,maybe not support dislike window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static kF(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/gamebooster/gamead/Advertisement;
    .locals 1

    const-string/jumbo v0, "template"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/miui/gamebooster/gamead/Advertisement;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/gamead/Advertisement;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static kG(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v6, 0x2710

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    cmp-long v2, p0, v6

    if-ltz v2, :cond_0

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    div-long v2, p0, v6

    long-to-int v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0c0023

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    long-to-int v1, p0

    new-array v2, v5, [Ljava/lang/Object;

    long-to-int v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0c0022

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private kJ(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "button_click"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gF(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CLICK"

    invoke-virtual {p1, v0, p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dj(Ljava/lang/String;Lcom/miui/gamebooster/gamead/Advertisement;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->deepLink:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->landingPageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_1
    invoke-static {p1}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/i;->Dj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/gamebooster/a/a;->eX(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/miui/gamebooster/a/a;->eS(Landroid/content/Context;Lcom/miui/gamebooster/service/IGameBooster;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/miui/securityscan/utils/b;->Im(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f070823

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    return-void

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->actionUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->actionUrl:Ljava/lang/String;

    const-string/jumbo v1, "migamecenter:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->actionUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JI(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    const-string/jumbo v0, "APP_START_DOWNLOAD"

    invoke-virtual {p1, v0, p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dj(Ljava/lang/String;Lcom/miui/gamebooster/gamead/Advertisement;)V

    const-string/jumbo v0, "game_booster"

    invoke-static {p0, v0}, Lcom/miui/securityscan/d/b;->Ln(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->appName:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f070754

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private kK(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 5

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "icon_click"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gF(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CLICK"

    invoke-virtual {p1, v0, p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dj(Ljava/lang/String;Lcom/miui/gamebooster/gamead/Advertisement;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->deepLink:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->landingPageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mimarket://details?id=%s&back=true&ref=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/gamebooster/gamead/Advertisement;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/miui/gamebooster/gamead/Advertisement;->getRef()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AdvertisementGroup"

    const-string/jumbo v2, "msg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private kL(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/gamebooster/gamead/j;

    invoke-direct {v1, p0, p1}, Lcom/miui/gamebooster/gamead/j;-><init>(Lcom/miui/gamebooster/gamead/Advertisement;Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private kM(Landroid/content/Context;Landroid/widget/Button;I)V
    .locals 4

    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string/jumbo v1, "0"

    iget-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonStyle:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private kN(Landroid/content/Context;Landroid/widget/Button;Landroid/view/View;Z)V
    .locals 9

    const v7, 0x7f080052

    const v5, 0x7f070826

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/gamead/Advertisement;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/cards/i;->Dj(Ljava/lang/String;)Z

    move-result v3

    const v2, 0x7f02015e

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonOpen:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f07074d

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(I)V

    move v2, v1

    :goto_0
    iget v4, p0, Lcom/miui/gamebooster/gamead/Advertisement;->template:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/miui/gamebooster/gamead/Advertisement;->template:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_a

    :cond_0
    if-eqz v2, :cond_9

    if-eqz v3, :cond_7

    iget v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonOpenColor:I

    if-eq v0, v6, :cond_6

    iget v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonOpenColor:I

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonOpen:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move v2, v1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/gamebooster/gamead/Advertisement;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/miui/securityscan/cards/f;->CH(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonNormalColor:I

    invoke-direct {p0, p1, p2, v2}, Lcom/miui/gamebooster/gamead/Advertisement;->kM(Landroid/content/Context;Landroid/widget/Button;I)V

    iget-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->button:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move v2, v1

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2, v5}, Landroid/widget/Button;->setText(I)V

    move v1, v0

    move v2, v0

    goto :goto_0

    :pswitch_2
    const v1, 0x7f070827

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    move v1, v0

    move v2, v0

    goto :goto_0

    :pswitch_3
    const v1, 0x7f070828

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    move v1, v0

    move v2, v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/cards/f;->CI(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    move v1, v0

    move v2, v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_7
    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonNormalColor:I

    if-eq v0, v6, :cond_8

    iget v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonNormalColor:I

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p2, v7}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    :cond_a
    if-eqz p4, :cond_2

    if-eqz v1, :cond_b

    const v0, 0x7f0200cc

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_4
    if-eqz v2, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_2

    :cond_b
    const v0, 0x7f0200c9

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic kO(Lcom/miui/gamebooster/gamead/Advertisement;Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/gamead/Advertisement;->kL(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    return-void
.end method


# virtual methods
.method public getClickMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->clickMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->id:I

    return v0
.end method

.method public getLayoutId()I
    .locals 2

    const v0, 0x7f030182

    iget v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->template:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0300a4

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0300a3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->viewMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v1, 0x0

    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->id:I

    const-string/jumbo v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->title:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->appName:Ljava/lang/String;

    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->summary:Ljava/lang/String;

    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->source:Ljava/lang/String;

    const-string/jumbo v0, "landingPageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->landingPageUrl:Ljava/lang/String;

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->template:I

    const-string/jumbo v0, "allDownloadNum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->allDownloadNum:J

    iget-wide v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->allDownloadNum:J

    invoke-static {v2, v3}, Lcom/miui/gamebooster/gamead/Advertisement;->kG(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->downloadCountStr:Ljava/lang/String;

    const-string/jumbo v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->icon:Ljava/lang/String;

    const-string/jumbo v0, "actionUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->actionUrl:Ljava/lang/String;

    const-string/jumbo v0, "deeplink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->deepLink:Ljava/lang/String;

    const-string/jumbo v0, "apkSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->apkSize:I

    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->packageName:Ljava/lang/String;

    const-string/jumbo v0, "ex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->ex:Ljava/lang/String;

    const-string/jumbo v0, "local"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->local:Z

    const-string/jumbo v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v2, "button"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->button:Ljava/lang/String;

    const-string/jumbo v2, "buttonColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonNormalColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    const-string/jumbo v2, "buttonOpenColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonOpenColor:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    const-string/jumbo v2, "buttonOpen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->buttonOpen:Ljava/lang/String;

    const-string/jumbo v2, "autoOpen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->autoOpen:Z

    const-string/jumbo v2, "adPositionInLayout"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->adPositionInLayout:I

    :cond_3
    const-string/jumbo v0, "imgUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v0, v1

    :goto_2
    const/4 v4, 0x3

    if-ge v0, v4, :cond_4

    if-ge v0, v3, :cond_4

    iget-object v4, p0, Lcom/miui/gamebooster/gamead/Advertisement;->multiImgUrls:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "targetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->targetType:I

    const-string/jumbo v0, "viewMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->viewMonitorUrls:[Ljava/lang/String;

    move v0, v1

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/miui/gamebooster/gamead/Advertisement;->viewMonitorUrls:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "clickMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->clickMonitorUrls:[Ljava/lang/String;

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->clickMonitorUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method public kH()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->adPositionInLayout:I

    return v0
.end method

.method public kI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->local:Z

    return v0
.end method

.method public kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V
    .locals 8

    const v4, 0x7f0201ff

    const/high16 v7, 0x44800000    # 1024.0f

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/gamead/BaseModel;->kl(ILandroid/view/View;Landroid/content/Context;Lcom/miui/gamebooster/gamead/a;)V

    iget v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->template:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p2, Lcom/miui/gamebooster/customview/f;

    invoke-virtual {p2, p0}, Lcom/miui/gamebooster/customview/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/customview/f;->ke()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/customview/f;->kf()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/customview/f;->kg()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/customview/f;->kh()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/gamead/Advertisement;->icon:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/gamebooster/customview/f;->kh()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v0, v1, v2, v4}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    invoke-virtual {p2}, Lcom/miui/gamebooster/customview/f;->ke()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/gamebooster/customview/f;->kg()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {p0, p3, v0, v1, v6}, Lcom/miui/gamebooster/gamead/Advertisement;->kN(Landroid/content/Context;Landroid/widget/Button;Landroid/view/View;Z)V

    check-cast p3, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {p2}, Lcom/miui/gamebooster/customview/f;->kh()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/miui/common/customview/AdImageView;

    iget v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->id:I

    invoke-virtual {p3, v0, v1, p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->di(Lcom/miui/common/customview/AdImageView;ILcom/miui/gamebooster/gamead/Advertisement;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/b;

    iget-object v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, v0, Lcom/miui/gamebooster/gamead/b;->kp:Landroid/widget/ImageView;

    invoke-virtual {p4}, Lcom/miui/gamebooster/gamead/a;->mw()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->icon:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/gamebooster/gamead/b;->kq:Landroid/widget/ImageView;

    sget-object v3, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v1, v2, v3, v4}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v1, v0, Lcom/miui/gamebooster/gamead/b;->kr:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/gamebooster/gamead/b;->ks:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/miui/gamebooster/gamead/b;->kp:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/miui/gamebooster/gamead/b;->kt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/gamebooster/gamead/Advertisement;->downloadCountStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/gamebooster/gamead/b;->ku:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/gamebooster/gamead/Advertisement;->apkSize:I

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v5, v7

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070966

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/gamebooster/gamead/b;->ks:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-direct {p0, p3, v1, v2, v6}, Lcom/miui/gamebooster/gamead/Advertisement;->kN(Landroid/content/Context;Landroid/widget/Button;Landroid/view/View;Z)V

    check-cast p3, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    iget-object v0, v0, Lcom/miui/gamebooster/gamead/b;->kq:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/common/customview/AdImageView;

    iget v1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->id:I

    invoke-virtual {p3, v0, v1, p0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->di(Lcom/miui/common/customview/AdImageView;ILcom/miui/gamebooster/gamead/Advertisement;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gamead/Advertisement;->kK(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a00c5

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "CLICK_AD"

    invoke-static {v0, v1}, Lcom/miui/antivirus/a/b;->azi(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void

    :sswitch_0
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gamead/Advertisement;->kJ(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/gamead/Advertisement;->kE(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a00c5 -> :sswitch_1
        0x7f0a00c7 -> :sswitch_0
        0x7f0a01f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public setTestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gamead/Advertisement;->testId:Ljava/lang/String;

    return-void
.end method
