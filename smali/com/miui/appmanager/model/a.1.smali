.class public Lcom/miui/appmanager/model/a;
.super Lcom/miui/appmanager/model/k;
.source ""


# instance fields
.field private aPC:J

.field private aPD:Ljava/lang/String;

.field private aPE:Z

.field private aPF:Z

.field private aPG:Z

.field private aPH:Z

.field private actionUrl:Ljava/lang/String;

.field private allDownloadNum:J

.field private autoOpen:Z

.field private button:Ljava/lang/String;

.field private buttonNormalColor:I

.field private buttonOpen:Ljava/lang/String;

.field private buttonStyle:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private clickMonitorUrls:[Ljava/lang/String;

.field private cta:Ljava/lang/String;

.field private dataId:Ljava/lang/String;

.field private deepLink:Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private id:I

.field private landingPageUrl:Ljava/lang/String;

.field private local:Z

.field private transient object:Ljava/lang/Object;

.field private packageName:Ljava/lang/String;

.field private positionId:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private targetType:I

.field private template:I

.field private title:Ljava/lang/String;

.field private viewMonitorUrls:[Ljava/lang/String;


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/appmanager/model/k;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/appmanager/model/a;->aPH:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/model/a;->aPG:Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->buttonStyle:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/miui/appmanager/model/a;->init(Lorg/json/JSONObject;)V

    return-void
.end method

.method private bgA(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "module_click"

    iget-boolean v0, p0, Lcom/miui/appmanager/model/a;->local:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->dataId:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/appmanager/a/a;->bhU(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CLICK"

    invoke-virtual {p1, v0, p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnf(Ljava/lang/String;Lcom/miui/appmanager/model/a;)V

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->deepLink:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/appmanager/model/a;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->landingPageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_2
    invoke-static {p1}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/i;->Dj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/appmanager/AppManagerMainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_3
    invoke-static {p1}, Lcom/miui/securityscan/utils/b;->Im(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f070823

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/appmanager/model/a;->actionUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->actionUrl:Ljava/lang/String;

    const-string/jumbo v1, "migamecenter:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/model/a;->actionUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JI(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, p0}, Lcom/miui/appmanager/model/a;->bgH(Landroid/content/Context;Lcom/miui/appmanager/model/a;)V

    const-string/jumbo v0, "app_manager"

    invoke-static {p0, v0}, Lcom/miui/securityscan/d/b;->Ln(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/appmanager/model/a;->title:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f070754

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string/jumbo v0, "APP_START_DOWNLOAD"

    invoke-virtual {p1, v0, p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnf(Ljava/lang/String;Lcom/miui/appmanager/model/a;)V

    goto :goto_1
.end method

.method private bgB(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 3

    const-string/jumbo v1, "module_click"

    iget-boolean v0, p0, Lcom/miui/appmanager/model/a;->local:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->dataId:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/appmanager/a/a;->bhU(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CLICK"

    invoke-virtual {p1, v0, p0}, Lcom/miui/appmanager/AppManagerMainActivity;->bnf(Ljava/lang/String;Lcom/miui/appmanager/model/a;)V

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->deepLink:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/appmanager/model/a;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->landingPageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/miui/appmanager/b/a;->biB(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/appmanager/model/a;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/appmanager/b/a;->biC(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/appmanager/model/a;->getRef()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/miui/appmanager/b/a;->biD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private bgC(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/appmanager/model/x;

    invoke-direct {v1, p0, p1}, Lcom/miui/appmanager/model/x;-><init>(Lcom/miui/appmanager/model/a;Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private bgD(Landroid/content/Context;Landroid/widget/Button;I)V
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

    iget-object v2, p0, Lcom/miui/appmanager/model/a;->buttonStyle:Ljava/lang/String;

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

.method private bgF(Landroid/content/Context;Landroid/widget/Button;Landroid/view/View;Lcom/miui/appmanager/model/a;Lcom/miui/securityscan/cards/i;Lcom/miui/securityscan/cards/f;)V
    .locals 5

    const v4, 0x7f070826

    const/4 v1, 0x0

    const v3, 0x7f020050

    const/4 v0, 0x1

    iget-object v2, p4, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    invoke-virtual {p5, v2}, Lcom/miui/securityscan/cards/i;->Dj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p4, Lcom/miui/appmanager/model/a;->buttonOpen:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f07074d

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    const-string/jumbo v1, "#cc000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p3, :cond_0

    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p4, Lcom/miui/appmanager/model/a;->buttonOpen:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p4, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    invoke-virtual {p6, v2}, Lcom/miui/securityscan/cards/f;->CH(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v1, p4, Lcom/miui/appmanager/model/a;->button:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p4, Lcom/miui/appmanager/model/a;->button:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget v1, p4, Lcom/miui/appmanager/model/a;->buttonNormalColor:I

    invoke-direct {p0, p1, p2, v1}, Lcom/miui/appmanager/model/a;->bgD(Landroid/content/Context;Landroid/widget/Button;I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2, v4}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string/jumbo v0, "#ff7b7b7b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    move v0, v1

    goto :goto_1

    :pswitch_2
    const v0, 0x7f070827

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string/jumbo v0, "#ff7b7b7b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    move v0, v1

    goto :goto_1

    :pswitch_3
    const v0, 0x7f070828

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string/jumbo v0, "#ff7b7b7b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    move v0, v1

    goto :goto_1

    :pswitch_4
    iget-object v0, p4, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    invoke-virtual {p6, v0}, Lcom/miui/securityscan/cards/f;->CI(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    const-string/jumbo v0, "#ff7b7b7b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(I)V

    move v0, v1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    :cond_4
    const v1, 0x7f0708a4

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

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

.method private bgG(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 6

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    new-instance v2, Lcom/miui/appmanager/model/z;

    invoke-direct {v2, p0, p1}, Lcom/miui/appmanager/model/z;-><init>(Lcom/miui/appmanager/model/a;Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "com.miui.securitycenter"

    const-string/jumbo v4, "com.miui.securitycenter_appmanager"

    invoke-virtual {p0}, Lcom/miui/appmanager/model/a;->getEx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/applicationlock/utils/d;->aei(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AMAdvCardModel"

    const-string/jumbo v1, "connect fail, maybe not support dislike window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic bgI(Lcom/miui/appmanager/model/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bgJ(Lcom/miui/appmanager/model/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->icon:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bgK(Lcom/miui/appmanager/model/a;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/model/a;->id:I

    return v0
.end method

.method static synthetic bgL(Lcom/miui/appmanager/model/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/a;->local:Z

    return v0
.end method

.method static synthetic bgM(Lcom/miui/appmanager/model/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/a;->aPH:Z

    return v0
.end method

.method static synthetic bgN(Lcom/miui/appmanager/model/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic bgO(Lcom/miui/appmanager/model/a;)I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/model/a;->template:I

    return v0
.end method

.method static synthetic bgP(Lcom/miui/appmanager/model/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/model/a;->aPH:Z

    return p1
.end method

.method static synthetic bgQ(Lcom/miui/appmanager/model/a;Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/model/a;->bgv(Lcom/miui/appmanager/AppManagerMainActivity;)V

    return-void
.end method

.method static synthetic bgR(Lcom/miui/appmanager/model/a;Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/model/a;->bgC(Lcom/miui/appmanager/AppManagerMainActivity;)V

    return-void
.end method

.method static synthetic bgS(Lcom/miui/appmanager/model/a;Landroid/content/Context;Landroid/widget/Button;Landroid/view/View;Lcom/miui/appmanager/model/a;Lcom/miui/securityscan/cards/i;Lcom/miui/securityscan/cards/f;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/appmanager/model/a;->bgF(Landroid/content/Context;Landroid/widget/Button;Landroid/view/View;Lcom/miui/appmanager/model/a;Lcom/miui/securityscan/cards/i;Lcom/miui/securityscan/cards/f;)V

    return-void
.end method

.method private bgv(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/appmanager/model/y;

    invoke-direct {v1, p0, p1}, Lcom/miui/appmanager/model/y;-><init>(Lcom/miui/appmanager/model/a;Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private bgw(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x80000000

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030149

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v0, v4, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    new-instance v2, Lcom/miui/appmanager/model/w;

    invoke-direct {v2, p0, v3, p1}, Lcom/miui/appmanager/model/w;-><init>(Lcom/miui/appmanager/model/a;Landroid/widget/PopupWindow;Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aget v2, v0, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    aget v0, v0, v7

    sub-int/2addr v0, v1

    invoke-virtual {v3, p2, v6, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private bgx(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    new-instance v2, Lcom/miui/appmanager/model/v;

    invoke-direct {v2, p0, p1}, Lcom/miui/appmanager/model/v;-><init>(Lcom/miui/appmanager/model/a;Lcom/miui/appmanager/AppManagerMainActivity;)V

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "com.miui.securitycenter"

    const-string/jumbo v4, "com.miui.securitycenter_appmanager"

    invoke-virtual {p0}, Lcom/miui/appmanager/model/a;->getEx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/applicationlock/utils/d;->aei(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bgE(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/model/a;->aPG:Z

    return-void
.end method

.method public bgH(Landroid/content/Context;Lcom/miui/appmanager/model/a;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/appmanager/model/a;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/common/b/k;->aIt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/appmanager/model/a;->bgy()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/cards/f;->CF(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/cards/f;->CG(Ljava/lang/String;I)V

    return-void
.end method

.method public bgy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/a;->aPE:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/appmanager/model/a;->local:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/a;->autoOpen:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bgz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/a;->aPG:Z

    return v0
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/appmanager/model/f;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/model/b;

    invoke-direct {v0, p0, p1}, Lcom/miui/appmanager/model/b;-><init>(Lcom/miui/appmanager/model/a;Landroid/view/View;)V

    return-object v0
.end method

.method public getClickMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->clickMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getCta()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->cta:Ljava/lang/String;

    return-object v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/model/a;->id:I

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->positionId:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/miui/appmanager/model/a;->landingPageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->landingPageUrl:Ljava/lang/String;

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

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->viewMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public init(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/appmanager/model/a;->id:I

    const-string/jumbo v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->dataId:Ljava/lang/String;

    const-string/jumbo v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/appmanager/model/a;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->title:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->summary:Ljava/lang/String;

    const-string/jumbo v0, "landingPageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->landingPageUrl:Ljava/lang/String;

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/appmanager/model/a;->template:I

    const-string/jumbo v0, "apkSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/appmanager/model/a;->aPC:J

    const-string/jumbo v0, "categoryName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->category:Ljava/lang/String;

    const-string/jumbo v0, "allDownloadNum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/miui/appmanager/model/a;->allDownloadNum:J

    const-string/jumbo v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->icon:Ljava/lang/String;

    const-string/jumbo v0, "actionUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->actionUrl:Ljava/lang/String;

    const-string/jumbo v0, "deeplink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->deepLink:Ljava/lang/String;

    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->packageName:Ljava/lang/String;

    const-string/jumbo v0, "ex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->ex:Ljava/lang/String;

    const-string/jumbo v0, "local"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/appmanager/model/a;->local:Z

    const-string/jumbo v0, "cta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->cta:Ljava/lang/String;

    const-string/jumbo v0, "parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "autoDownload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/appmanager/model/a;->aPF:Z

    const-string/jumbo v2, "autoActive"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/appmanager/model/a;->aPE:Z

    const-string/jumbo v2, "appDownloadUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->aPD:Ljava/lang/String;

    :cond_2
    const-string/jumbo v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v2, "button"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/appmanager/model/a;->button:Ljava/lang/String;

    const-string/jumbo v2, "buttonOpen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/appmanager/model/a;->buttonOpen:Ljava/lang/String;

    const-string/jumbo v2, "autoOpen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/appmanager/model/a;->autoOpen:Z

    :cond_3
    const-string/jumbo v2, "buttonColor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/appmanager/model/a;->buttonNormalColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v0, "targetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/appmanager/model/a;->targetType:I

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

    iput-object v0, p0, Lcom/miui/appmanager/model/a;->viewMonitorUrls:[Ljava/lang/String;

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/miui/appmanager/model/a;->viewMonitorUrls:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    iput v4, p0, Lcom/miui/appmanager/model/a;->buttonNormalColor:I

    goto :goto_0

    :cond_4
    iput v4, p0, Lcom/miui/appmanager/model/a;->buttonNormalColor:I

    goto :goto_0

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

    iput-object v2, p0, Lcom/miui/appmanager/model/a;->clickMonitorUrls:[Ljava/lang/String;

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/miui/appmanager/model/a;->clickMonitorUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public isLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/a;->local:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/AppManagerMainActivity;

    iget v1, p0, Lcom/miui/appmanager/model/a;->template:I

    const/16 v2, 0x271e

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/miui/appmanager/j;->bml(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/appmanager/model/a;->bgG(Lcom/miui/appmanager/AppManagerMainActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/miui/appmanager/model/a;->bgB(Lcom/miui/appmanager/AppManagerMainActivity;)V

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/miui/appmanager/model/a;->local:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/miui/appmanager/model/a;->bgw(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/miui/appmanager/model/a;->bgx(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/miui/appmanager/model/a;->bgA(Lcom/miui/appmanager/AppManagerMainActivity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00c5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
