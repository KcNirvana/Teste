.class public Lcom/miui/common/datamodel/Advertisement;
.super Lcom/miui/common/datamodel/BaseModel;
.source ""


# static fields
.field private static final serialVersionUID:J = -0x46681868d218a737L


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private allDownloadNum:J

.field private appRatingScore:I

.field private autoOpen:Z

.field private button:Ljava/lang/String;

.field private buttonNormalColor:I

.field private buttonOpen:Ljava/lang/String;

.field private buttonOpenColor:I

.field private clickMonitorUrls:[Ljava/lang/String;

.field private cta:Ljava/lang/String;

.field private deepLink:Ljava/lang/String;

.field private downloadCountStr:Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:I

.field private isLoaded:Z

.field private landingPageUrl:Ljava/lang/String;

.field private mAdHandler:Landroid/os/Handler;

.field private mGlobalADType:I

.field protected multiImgUrls:[Ljava/lang/String;

.field private transient object:Ljava/lang/Object;

.field private packageName:Ljava/lang/String;

.field private positionId:Ljava/lang/String;

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

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    iput v1, p0, Lcom/miui/common/datamodel/Advertisement;->buttonNormalColor:I

    iput v1, p0, Lcom/miui/common/datamodel/Advertisement;->buttonOpenColor:I

    new-instance v0, Lcom/miui/common/datamodel/E;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/common/datamodel/E;-><init>(Lcom/miui/common/datamodel/Advertisement;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->mAdHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/miui/common/datamodel/BaseModel;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    iput v1, p0, Lcom/miui/common/datamodel/Advertisement;->buttonNormalColor:I

    iput v1, p0, Lcom/miui/common/datamodel/Advertisement;->buttonOpenColor:I

    new-instance v0, Lcom/miui/common/datamodel/E;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/common/datamodel/E;-><init>(Lcom/miui/common/datamodel/Advertisement;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->mAdHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/miui/common/datamodel/Advertisement;->init(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static aKD(JLorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/datamodel/Advertisement;
    .locals 4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v0, "template"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return-object v1

    :sswitch_0
    const-string/jumbo v0, "Advertisement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTagId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3}, Lcom/miui/common/datamodel/A;->aKs(JLorg/json/JSONObject;Ljava/lang/String;)Lcom/miui/common/datamodel/Advertisement;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x8 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x28 -> :sswitch_0
        0x47 -> :sswitch_0
        0x2711 -> :sswitch_0
    .end sparse-switch
.end method

.method private aKG()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/common/datamodel/G;

    invoke-direct {v1, p0}, Lcom/miui/common/datamodel/G;-><init>(Lcom/miui/common/datamodel/Advertisement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static aKH(J)Ljava/lang/String;
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

    const v3, 0x7f0c0021

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

    const v3, 0x7f0c0020

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private aKI(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->deepLink:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->landingPageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_1
    invoke-static {p1}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/i;->Dj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/common/datamodel/y;->aKb(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/miui/securityscan/utils/b;->Im(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f070823

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/common/datamodel/Advertisement;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/common/b/k;->aIt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/common/datamodel/Advertisement;->autoOpen:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/cards/f;->CF(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/cards/f;->CG(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/common/datamodel/Advertisement;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f070754

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private aKJ(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->deepLink:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->landingPageUrl:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/miui/common/datamodel/Advertisement;->getRef()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Advertisement"

    const-string/jumbo v2, "msg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private aKK(Landroid/content/Context;Landroid/widget/Button;Z)V
    .locals 9

    const v7, 0x7f080052

    const v6, 0x7f070826

    const/4 v0, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/securityscan/cards/i;->Dj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->buttonOpen:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f07074d

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    move v1, v0

    :goto_0
    iget v3, p0, Lcom/miui/common/datamodel/Advertisement;->template:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/miui/common/datamodel/Advertisement;->template:I

    const/16 v4, 0x19

    if-ne v3, v4, :cond_8

    :cond_0
    if-eqz v1, :cond_7

    if-eqz v2, :cond_5

    iget v0, p0, Lcom/miui/common/datamodel/Advertisement;->buttonOpenColor:I

    if-eq v0, v5, :cond_4

    iget v0, p0, Lcom/miui/common/datamodel/Advertisement;->buttonOpenColor:I

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->buttonOpen:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/securityscan/cards/f;->CH(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->button:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setText(I)V

    move v0, v1

    goto :goto_0

    :pswitch_2
    const v0, 0x7f070827

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    const v0, 0x7f070828

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setText(I)V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080074

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/miui/common/datamodel/Advertisement;->buttonNormalColor:I

    if-eq v0, v5, :cond_6

    iget v0, p0, Lcom/miui/common/datamodel/Advertisement;->buttonNormalColor:I

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080075

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2, v7}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_1

    if-eqz v0, :cond_9

    const v0, 0x7f0200cc

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_2
    if-eqz v1, :cond_a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080142

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

    :cond_9
    const v0, 0x7f0200c9

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_1

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

.method private aKL(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    new-instance v2, Lcom/miui/common/datamodel/F;

    invoke-direct {v2, p0}, Lcom/miui/common/datamodel/F;-><init>(Lcom/miui/common/datamodel/Advertisement;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "com.miui.securitycenter"

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "com.miui.securitycenter_globaladevent"

    :goto_0
    invoke-virtual {p0}, Lcom/miui/common/datamodel/Advertisement;->getEx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/applicationlock/utils/d;->aei(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v4, "com.miui.securitycenter_datamodel"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Advertisement"

    const-string/jumbo v1, "connect fail, maybe not support dislike window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic aKN(Lcom/miui/common/datamodel/Advertisement;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic aKO(Lcom/miui/common/datamodel/Advertisement;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/datamodel/Advertisement;->template:I

    return v0
.end method

.method static synthetic aKP(Lcom/miui/common/datamodel/Advertisement;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/datamodel/Advertisement;->aKG()V

    return-void
.end method

.method private getRef()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->landingPageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->landingPageUrl:Ljava/lang/String;

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


# virtual methods
.method public aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V
    .locals 9

    const/4 v7, 0x2

    const v6, 0x7f0201ff

    const/4 v1, 0x1

    const/16 v8, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/common/datamodel/BaseModel;->aJU(ILandroid/view/View;Landroid/content/Context;Lcom/miui/common/datamodel/z;)V

    iget v0, p0, Lcom/miui/common/datamodel/Advertisement;->template:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/h;

    iget-object v1, v0, Lcom/miui/common/datamodel/h;->aAA:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->source:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/common/datamodel/h;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v2, v0, Lcom/miui/common/datamodel/h;->aAz:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aJY()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/miui/common/datamodel/h;->aAz:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {p0, v0, p1, p0}, Lcom/miui/common/datamodel/Advertisement;->aKM(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/datamodel/Advertisement;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/n;

    iget-object v1, v0, Lcom/miui/common/datamodel/n;->aAq:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->source:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/common/datamodel/n;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/common/datamodel/n;->aAp:Landroid/widget/TextView;

    const v3, 0x7f070829

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/miui/common/datamodel/n;->aAp:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v2, v0, Lcom/miui/common/datamodel/n;->icon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/miui/common/datamodel/n;->icon:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {p0, v0, p1, p0}, Lcom/miui/common/datamodel/Advertisement;->aKM(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/datamodel/Advertisement;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/g;

    iget-object v3, v0, Lcom/miui/common/datamodel/g;->aAx:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->summary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/miui/common/datamodel/g;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/miui/common/datamodel/Advertisement;->template:I

    const/16 v4, 0x15

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/miui/common/datamodel/g;->aAs:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aJY()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->icon:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/common/datamodel/g;->icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v3, v4, v5, v6}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v3, v0, Lcom/miui/common/datamodel/g;->aAs:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v3, v0, Lcom/miui/common/datamodel/g;->aAv:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/miui/common/datamodel/Advertisement;->allDownloadNum:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/miui/common/datamodel/g;->aAv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->downloadCountStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/miui/common/datamodel/g;->aAv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_2
    iget v3, p0, Lcom/miui/common/datamodel/Advertisement;->appRatingScore:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lcom/miui/common/datamodel/g;->aAw:Landroid/widget/RatingBar;

    invoke-virtual {v3, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    iget-object v2, v0, Lcom/miui/common/datamodel/g;->aAw:Landroid/widget/RatingBar;

    iget v3, p0, Lcom/miui/common/datamodel/Advertisement;->appRatingScore:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    :goto_3
    iget-object v2, v0, Lcom/miui/common/datamodel/g;->aAt:Landroid/widget/Button;

    invoke-direct {p0, p3, v2, v1}, Lcom/miui/common/datamodel/Advertisement;->aKK(Landroid/content/Context;Landroid/widget/Button;Z)V

    iget-object v0, v0, Lcom/miui/common/datamodel/g;->icon:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {p0, v0, p1, p0}, Lcom/miui/common/datamodel/Advertisement;->aKM(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/datamodel/Advertisement;)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, v0, Lcom/miui/common/datamodel/g;->aAs:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/miui/common/datamodel/g;->icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v3, v4, v5, v6}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/miui/common/datamodel/g;->aAv:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/miui/common/datamodel/g;->aAw:Landroid/widget/RatingBar;

    invoke-virtual {v2, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_3

    :sswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/x;

    iget-object v3, v0, Lcom/miui/common/datamodel/x;->aAn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->summary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/miui/common/datamodel/x;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/miui/common/datamodel/Advertisement;->template:I

    const/16 v4, 0x19

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/miui/common/datamodel/x;->aAl:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aJY()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->icon:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/common/datamodel/x;->icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v3, v4, v5, v6}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v3, v0, Lcom/miui/common/datamodel/x;->aAl:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    iget-object v3, v0, Lcom/miui/common/datamodel/x;->aBe:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-wide v4, p0, Lcom/miui/common/datamodel/Advertisement;->allDownloadNum:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/miui/common/datamodel/x;->aBe:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->downloadCountStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/miui/common/datamodel/x;->aBe:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_5
    iget v3, p0, Lcom/miui/common/datamodel/Advertisement;->appRatingScore:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    iget-object v3, v0, Lcom/miui/common/datamodel/x;->aBf:Landroid/widget/RatingBar;

    invoke-virtual {v3, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    iget-object v3, v0, Lcom/miui/common/datamodel/x;->aBf:Landroid/widget/RatingBar;

    iget v4, p0, Lcom/miui/common/datamodel/Advertisement;->appRatingScore:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setRating(F)V

    :goto_6
    iget-object v3, v0, Lcom/miui/common/datamodel/x;->aAm:Landroid/widget/Button;

    iget v4, p0, Lcom/miui/common/datamodel/Advertisement;->template:I

    if-eq v4, v8, :cond_8

    iget v4, p0, Lcom/miui/common/datamodel/Advertisement;->template:I

    const/16 v5, 0x19

    if-eq v4, v5, :cond_8

    :goto_7
    invoke-direct {p0, p3, v3, v1}, Lcom/miui/common/datamodel/Advertisement;->aKK(Landroid/content/Context;Landroid/widget/Button;Z)V

    iget-object v0, v0, Lcom/miui/common/datamodel/x;->icon:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {p0, v0, p1, p0}, Lcom/miui/common/datamodel/Advertisement;->aKM(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/datamodel/Advertisement;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, v0, Lcom/miui/common/datamodel/x;->aAl:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/miui/common/datamodel/x;->icon:Landroid/widget/ImageView;

    sget-object v5, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v3, v4, v5, v6}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    goto :goto_4

    :cond_6
    iget-object v3, v0, Lcom/miui/common/datamodel/x;->aBe:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_7
    iget-object v3, v0, Lcom/miui/common/datamodel/x;->aBf:Landroid/widget/RatingBar;

    invoke-virtual {v3, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_6

    :cond_8
    move v1, v2

    goto :goto_7

    :sswitch_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/c;

    iget-object v1, v0, Lcom/miui/common/datamodel/c;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->summary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/common/datamodel/c;->aAh:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->source:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->downloadCountStr:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/miui/common/datamodel/News;->aJX(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/common/datamodel/c;->aAf:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->downloadCountStr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v3, v0, Lcom/miui/common/datamodel/c;->aAg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aJY()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/miui/common/datamodel/c;->aAd:Landroid/widget/Button;

    invoke-direct {p0, p3, v1, v2}, Lcom/miui/common/datamodel/Advertisement;->aKK(Landroid/content/Context;Landroid/widget/Button;Z)V

    iget-object v0, v0, Lcom/miui/common/datamodel/c;->aAg:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {p0, v0, p1, p0}, Lcom/miui/common/datamodel/Advertisement;->aKM(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/datamodel/Advertisement;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/i;

    iget-object v3, v0, Lcom/miui/common/datamodel/i;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->summary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/miui/common/datamodel/i;->aAH:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->source:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/common/datamodel/Advertisement;->downloadCountStr:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/miui/common/datamodel/News;->aJX(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/miui/common/datamodel/i;->aAD:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->downloadCountStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/miui/common/datamodel/i;->aAE:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v3, v1

    iget-object v3, v0, Lcom/miui/common/datamodel/i;->aAF:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v1, v7

    iget-object v3, v0, Lcom/miui/common/datamodel/i;->aAG:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/miui/common/datamodel/i;->aAB:Landroid/widget/Button;

    invoke-direct {p0, p3, v1, v2}, Lcom/miui/common/datamodel/Advertisement;->aKK(Landroid/content/Context;Landroid/widget/Button;Z)V

    iget-object v0, v0, Lcom/miui/common/datamodel/i;->aAE:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {p0, v0, p1, p0}, Lcom/miui/common/datamodel/Advertisement;->aKM(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/datamodel/Advertisement;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/j;

    iget-object v3, v0, Lcom/miui/common/datamodel/j;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->summary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/miui/common/datamodel/j;->aAH:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->source:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/common/datamodel/Advertisement;->downloadCountStr:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/miui/common/datamodel/News;->aJX(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/miui/common/datamodel/j;->aAD:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->downloadCountStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/miui/common/datamodel/j;->aAE:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v3, v1

    iget-object v3, v0, Lcom/miui/common/datamodel/j;->aAF:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v1, v7

    iget-object v3, v0, Lcom/miui/common/datamodel/j;->aAG:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/miui/common/datamodel/j;->aAB:Landroid/widget/Button;

    invoke-direct {p0, p3, v1, v2}, Lcom/miui/common/datamodel/Advertisement;->aKK(Landroid/content/Context;Landroid/widget/Button;Z)V

    iget-object v0, v0, Lcom/miui/common/datamodel/j;->aAE:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {p0, v0, p1, p0}, Lcom/miui/common/datamodel/Advertisement;->aKM(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/datamodel/Advertisement;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/o;

    iget-object v3, v0, Lcom/miui/common/datamodel/o;->aAH:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->source:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5}, Lcom/miui/common/datamodel/News;->aJX(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/miui/common/datamodel/o;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->summary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/miui/common/datamodel/o;->aAJ:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v2, v3, v2

    iget-object v3, v0, Lcom/miui/common/datamodel/o;->aAE:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v2, v1

    iget-object v2, v0, Lcom/miui/common/datamodel/o;->aAF:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v1, v7

    iget-object v2, v0, Lcom/miui/common/datamodel/o;->aAG:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aKa()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/miui/common/datamodel/o;->aAE:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {p0, v0, p1, p0}, Lcom/miui/common/datamodel/Advertisement;->aKM(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/datamodel/Advertisement;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/datamodel/w;

    iget-object v1, v0, Lcom/miui/common/datamodel/w;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/common/datamodel/Advertisement;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/miui/common/datamodel/w;->icon:Landroid/widget/ImageView;

    check-cast v0, Lcom/miui/common/customview/AdImageView;

    invoke-virtual {p0, v0, p1, p0}, Lcom/miui/common/datamodel/Advertisement;->aKM(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/datamodel/Advertisement;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/b/a;

    invoke-virtual {p0}, Lcom/miui/common/datamodel/Advertisement;->getPositionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/common/datamodel/A;->aKB(Ljava/lang/String;)V

    const-string/jumbo v3, "Advertisement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "International Ads reportPV : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/common/datamodel/Advertisement;->getPositionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/miui/common/datamodel/Advertisement;->isLoaded:Z

    if-eqz v3, :cond_9

    iget-boolean v3, v0, Lcom/miui/b/a;->initialized:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    :cond_9
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_a
    iget v3, p0, Lcom/miui/common/datamodel/Advertisement;->mGlobalADType:I

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->object:Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/miui/common/datamodel/A;->aKv(Lcom/miui/b/a;ILjava/lang/Object;)V

    iget-object v3, v0, Lcom/miui/b/a;->baP:Landroid/view/View;

    const v4, 0x7f0200aa

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v3, v0, Lcom/miui/b/a;->titleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/miui/b/a;->baL:Landroid/widget/Button;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->cta:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/miui/b/a;->baL:Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080129

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/miui/common/datamodel/A;->aKw(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->summary:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/miui/b/a;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v2, v3, v2

    iget-object v3, v0, Lcom/miui/b/a;->baM:Landroid/widget/ImageView;

    sget-object v4, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v2, v3, v4, v6}, Lcom/miui/common/b/q;->aJh(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;I)V

    iget-object v2, v0, Lcom/miui/b/a;->baN:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    aget-object v1, v2, v1

    iget-object v2, v0, Lcom/miui/b/a;->baN:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/common/datamodel/y;->aJY()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/miui/common/b/q;->aJi(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_b
    iget-object v1, v0, Lcom/miui/b/a;->baO:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/miui/common/datamodel/Advertisement;->mGlobalADType:I

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->object:Ljava/lang/Object;

    invoke-static {p3, v1, v2, v3}, Lcom/miui/common/datamodel/A;->aKC(Landroid/content/Context;Landroid/widget/RelativeLayout;ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/miui/b/a;->closeView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, v0, Lcom/miui/b/a;->summaryView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->summary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/miui/b/a;->summaryView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x8 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1e -> :sswitch_5
        0x1f -> :sswitch_6
        0x28 -> :sswitch_7
        0x47 -> :sswitch_8
        0x2711 -> :sswitch_9
    .end sparse-switch
.end method

.method public aKE(Lcom/miui/common/datamodel/Advertisement;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "Advertisement"

    const-string/jumbo v1, "fill ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/common/datamodel/Advertisement;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->setId(I)V

    invoke-virtual {p1}, Lcom/miui/common/datamodel/Advertisement;->getCta()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->setCta(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/common/datamodel/Advertisement;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->setObject(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/miui/common/datamodel/Advertisement;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/common/datamodel/Advertisement;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->setSummary(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/common/datamodel/Advertisement;->getMultiImgUrls()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->setMultiImgUrls([Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/common/datamodel/Advertisement;->getGlobalADType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->setGlobalADType(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->setLoaded(Z)V

    return-void
.end method

.method public aKF(Ljava/lang/String;Lcom/miui/common/datamodel/Advertisement;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/securityscan/d/d;

    invoke-direct {v1, p1, p2}, Lcom/miui/securityscan/d/d;-><init>(Ljava/lang/String;Lcom/miui/common/datamodel/Advertisement;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/securityscan/d/b;->Lp(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public aKM(Lcom/miui/common/customview/AdImageView;ILcom/miui/common/datamodel/Advertisement;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->mAdHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/common/customview/AdImageView;->aGq(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public getClickMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->clickMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getCta()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->cta:Ljava/lang/String;

    return-object v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalADType()I
    .locals 1

    iget v0, p0, Lcom/miui/common/datamodel/Advertisement;->mGlobalADType:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/datamodel/Advertisement;->id:I

    return v0
.end method

.method public getLayoutId()I
    .locals 2

    const v0, 0x7f030182

    iget v1, p0, Lcom/miui/common/datamodel/Advertisement;->template:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f03007b

    goto :goto_0

    :sswitch_1
    const v0, 0x7f03007e

    goto :goto_0

    :sswitch_2
    const v0, 0x7f030080

    goto :goto_0

    :sswitch_3
    const v0, 0x7f030082

    goto :goto_0

    :sswitch_4
    const v0, 0x7f03007a

    goto :goto_0

    :sswitch_5
    const v0, 0x7f03007c

    goto :goto_0

    :sswitch_6
    const v0, 0x7f03007d

    goto :goto_0

    :sswitch_7
    const v0, 0x7f03007f

    goto :goto_0

    :sswitch_8
    const v0, 0x7f030081

    goto :goto_0

    :sswitch_9
    iget v0, p0, Lcom/miui/common/datamodel/Advertisement;->mGlobalADType:I

    invoke-static {v0}, Lcom/miui/common/datamodel/A;->aKx(I)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x8 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1e -> :sswitch_5
        0x1f -> :sswitch_6
        0x28 -> :sswitch_7
        0x47 -> :sswitch_8
        0x2711 -> :sswitch_9
    .end sparse-switch
.end method

.method public getMultiImgUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->positionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->viewMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/datamodel/Advertisement;->id:I

    const-string/jumbo v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->title:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->summary:Ljava/lang/String;

    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->source:Ljava/lang/String;

    const-string/jumbo v0, "landingPageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->landingPageUrl:Ljava/lang/String;

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/datamodel/Advertisement;->template:I

    const-string/jumbo v0, "allDownloadNum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/common/datamodel/Advertisement;->allDownloadNum:J

    const-string/jumbo v0, "appRatingScore"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/common/datamodel/Advertisement;->appRatingScore:I

    iget-wide v2, p0, Lcom/miui/common/datamodel/Advertisement;->allDownloadNum:J

    invoke-static {v2, v3}, Lcom/miui/common/datamodel/Advertisement;->aKH(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->downloadCountStr:Ljava/lang/String;

    const-string/jumbo v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->icon:Ljava/lang/String;

    const-string/jumbo v0, "actionUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->actionUrl:Ljava/lang/String;

    const-string/jumbo v0, "deeplink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->deepLink:Ljava/lang/String;

    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->packageName:Ljava/lang/String;

    const-string/jumbo v0, "ex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->ex:Ljava/lang/String;

    const-string/jumbo v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v2, "button"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/datamodel/Advertisement;->button:Ljava/lang/String;

    const-string/jumbo v2, "buttonColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/common/datamodel/Advertisement;->buttonNormalColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    const-string/jumbo v2, "buttonOpenColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/common/datamodel/Advertisement;->buttonOpenColor:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    const-string/jumbo v2, "buttonOpen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/datamodel/Advertisement;->buttonOpen:Ljava/lang/String;

    const-string/jumbo v2, "autoOpen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/common/datamodel/Advertisement;->autoOpen:Z

    :cond_4
    const-string/jumbo v0, "imgUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v0, v1

    :goto_2
    const/4 v4, 0x3

    if-ge v0, v4, :cond_5

    if-ge v0, v3, :cond_5

    iget-object v4, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "targetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/datamodel/Advertisement;->targetType:I

    const-string/jumbo v0, "viewMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/common/datamodel/Advertisement;->viewMonitorUrls:[Ljava/lang/String;

    move v0, v1

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/miui/common/datamodel/Advertisement;->viewMonitorUrls:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "clickMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/common/datamodel/Advertisement;->clickMonitorUrls:[Ljava/lang/String;

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/miui/common/datamodel/Advertisement;->clickMonitorUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-void

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method public isLoaded()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/common/datamodel/Advertisement;->isLoaded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/common/datamodel/Advertisement;->mGlobalADType:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/miui/common/datamodel/Advertisement;->template:I

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/miui/common/datamodel/A;->aKA(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->aKL(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/datamodel/Advertisement;->getPositionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/datamodel/Advertisement;->object:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/miui/common/datamodel/A;->aKy(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-direct {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->aKJ(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->aKI(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/miui/common/datamodel/Advertisement;->aKL(Landroid/content/Context;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00c5 -> :sswitch_1
        0x7f0a0185 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCta(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/Advertisement;->cta:Ljava/lang/String;

    return-void
.end method

.method public setGlobalADType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/datamodel/Advertisement;->mGlobalADType:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/datamodel/Advertisement;->id:I

    return-void
.end method

.method public setLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/datamodel/Advertisement;->isLoaded:Z

    return-void
.end method

.method public setMultiImgUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/Advertisement;->multiImgUrls:[Ljava/lang/String;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/Advertisement;->object:Ljava/lang/Object;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/Advertisement;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/Advertisement;->testId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/datamodel/Advertisement;->title:Ljava/lang/String;

    return-void
.end method
