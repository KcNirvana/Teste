.class public Lcom/miui/common/card/models/AdvCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source ""


# static fields
.field private static final MAX_IMG_SIZE:I = 0x3

.field private static final TAG_CLOSE_NEW_STYLE:Ljava/lang/String; = "closeNormalAdNewStyle"


# instance fields
.field private actionUrl:Ljava/lang/String;

.field private allDownloadNum:J

.field private autoOpen:Z

.field private btnBgColorDownloading2:Ljava/lang/String;

.field private btnBgColorNormal2:Ljava/lang/String;

.field private btnBgColorOpenN2:Ljava/lang/String;

.field private btnBgColorOpenP2:Ljava/lang/String;

.field private btnBgColorPressed2:Ljava/lang/String;

.field private buttonColor2:Ljava/lang/String;

.field private buttonOpen:Ljava/lang/String;

.field private buttonOpenColor2:Ljava/lang/String;

.field private clickMonitorUrls:[Ljava/lang/String;

.field private cta:Ljava/lang/String;

.field private dataId:Ljava/lang/String;

.field private deepLink:Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private id:I

.field private landingPageUrl:Ljava/lang/String;

.field private local:Z

.field protected multiImgUrls:[Ljava/lang/String;

.field private transient object:Ljava/lang/Object;

.field private packageName:Ljava/lang/String;

.field private position:I

.field private positionId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private targetType:I

.field private template:I

.field private testId:Ljava/lang/String;

.field private usePosition:I

.field private validTime:J

.field private viewMonitorUrls:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/common/card/models/AdvCardModel;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    return v0
.end method

.method static synthetic -get2(Lcom/miui/common/card/models/AdvCardModel;)I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->usePosition:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/miui/common/card/models/AdvCardModel;Landroid/content/Context;Landroid/widget/Button;Lcom/miui/common/card/models/AdvCardModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/common/card/models/AdvCardModel;->setDonwloadButtonStatus(Landroid/content/Context;Landroid/widget/Button;Lcom/miui/common/card/models/AdvCardModel;)V

    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/common/card/models/AdvCardModel;->position:I

    invoke-virtual {p0, p2}, Lcom/miui/common/card/models/AdvCardModel;->init(Lorg/json/JSONObject;)V

    iput p3, p0, Lcom/miui/common/card/models/AdvCardModel;->usePosition:I

    return-void
.end method

.method private closeNormalAd(Lcom/miui/securityscan/MainActivity;Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x2

    const/high16 v5, -0x80000000

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getResources()Landroid/content/res/Resources;

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

    new-instance v2, Lcom/miui/common/card/models/AdvCardModel$1;

    invoke-direct {v2, p0, v3, p1}, Lcom/miui/common/card/models/AdvCardModel$1;-><init>(Lcom/miui/common/card/models/AdvCardModel;Landroid/widget/PopupWindow;Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const v4, 0x7f090021

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aget v4, v2, v6

    sub-int v0, v4, v0

    aget v2, v2, v7

    sub-int v1, v2, v1

    invoke-virtual {v3, p2, v6, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private closeNormalAdNewStyle(Lcom/miui/securityscan/MainActivity;)V
    .locals 6

    invoke-static {}, Lcom/miui/applicationlock/utils/d;->getInstance()Lcom/miui/applicationlock/utils/d;

    move-result-object v0

    new-instance v2, Lcom/miui/common/card/models/AdvCardModel$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/common/card/models/AdvCardModel$2;-><init>(Lcom/miui/common/card/models/AdvCardModel;Lcom/miui/securityscan/MainActivity;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/d;->aeh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.miui.securitycenter_scanresult"

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->getEx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/miui/applicationlock/utils/d;->aei(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "closeNormalAdNewStyle"

    const-string/jumbo v1, "showDislikeWindow failed,maybe method showDislikeWindow() does not match or exits "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "closeNormalAdNewStyle"

    const-string/jumbo v1, "connect failed,maybe not support dislike window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getRef()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->landingPageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->landingPageUrl:Ljava/lang/String;

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

.method private onAdvButtonClick(Lcom/miui/securityscan/MainActivity;)V
    .locals 3

    const-string/jumbo v0, "CLICK"

    invoke-static {v0, p0}, Lcom/miui/securityscan/MainActivity;->Mz(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->deepLink:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->landingPageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_1
    invoke-static {p1}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/cards/i;->Dj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p1}, Lcom/miui/securityscan/utils/b;->Im(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f070823

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/b;->In(Landroid/content/Context;I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/common/card/models/AdvCardModel;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/miui/common/b/k;->aIt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/common/card/models/AdvCardModel;->autoOpen:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/cards/f;->CF(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/cards/f;->CG(Ljava/lang/String;I)V

    const-string/jumbo v0, "APP_START_DOWNLOAD"

    invoke-static {v0, p0}, Lcom/miui/securityscan/MainActivity;->Mz(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V

    const-string/jumbo v0, "security_scan"

    invoke-static {p0, v0}, Lcom/miui/securityscan/d/b;->Ln(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onAdvContentClick(Lcom/miui/securityscan/MainActivity;)V
    .locals 5

    const-string/jumbo v0, "CLICK"

    invoke-static {v0, p0}, Lcom/miui/securityscan/MainActivity;->Mz(Ljava/lang/String;Lcom/miui/common/card/models/AdvCardModel;)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->deepLink:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->landingPageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/securityscan/utils/n;->JH(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "market://details/detailmini?id=%s&ref=%s&finishWhenDownload=false&finishWhenOpen=true"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/miui/common/card/models/AdvCardModel;->getRef()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/miui/common/card/models/AdvCardModel;->isSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/miui/securityscan/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parse(Lcom/miui/securityscan/cards/DataModel;IILorg/json/JSONObject;)Lcom/miui/common/card/models/AdvCardModel;
    .locals 4

    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/miui/common/card/models/AdvBigButtonCardModel;

    const v1, 0x7f030049

    invoke-direct {v0, v1, p3, p1}, Lcom/miui/common/card/models/AdvBigButtonCardModel;-><init>(ILorg/json/JSONObject;I)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/miui/common/card/models/AdvBigButtonCardModel;

    const v1, 0x7f030047

    invoke-direct {v0, v1, p3, p1}, Lcom/miui/common/card/models/AdvBigButtonCardModel;-><init>(ILorg/json/JSONObject;I)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/miui/common/card/models/AdvSmallButtonCardModel;

    const v1, 0x7f03004a

    invoke-direct {v0, v1, p3, p1}, Lcom/miui/common/card/models/AdvSmallButtonCardModel;-><init>(ILorg/json/JSONObject;I)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/miui/common/card/models/AdvSmallButtonCardModel;

    const v1, 0x7f030048

    invoke-direct {v0, v1, p3, p1}, Lcom/miui/common/card/models/AdvSmallButtonCardModel;-><init>(ILorg/json/JSONObject;I)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/miui/common/card/models/AdvNormalWebsiteBigPicCardModel;

    invoke-direct {v0, p3, p1}, Lcom/miui/common/card/models/AdvNormalWebsiteBigPicCardModel;-><init>(Lorg/json/JSONObject;I)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/miui/common/card/models/AdvNormalWebsiteSmallPicCardModel;

    invoke-direct {v0, p3, p1}, Lcom/miui/common/card/models/AdvNormalWebsiteSmallPicCardModel;-><init>(Lorg/json/JSONObject;I)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/miui/common/card/models/AdvNormalWebsiteGroupPicCardModel;

    invoke-direct {v0, p3, p1}, Lcom/miui/common/card/models/AdvNormalWebsiteGroupPicCardModel;-><init>(Lorg/json/JSONObject;I)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/miui/securityscan/cards/DataModel;->Dd()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/cards/DataModel;->Di(I)V

    invoke-virtual {p0}, Lcom/miui/securityscan/cards/DataModel;->Dd()I

    move-result v1

    const-string/jumbo v0, "AdvCardModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "internationalAdvIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    packed-switch v1, :pswitch_data_0

    :goto_1
    const-string/jumbo v1, "AdvCardModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "placeid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/miui/securityscan/cards/d;->Cw(ILjava/lang/String;)Lcom/miui/common/card/models/AdvInternationalCardModel;

    move-result-object v0

    const-string/jumbo v1, "extra"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v2, "position"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/miui/common/card/models/AdvCardModel;->position:I

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v0, ""

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, ""

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x8 -> :sswitch_0
        0x9 -> :sswitch_2
        0x17 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x28 -> :sswitch_6
        0x2711 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setButtonBGandTextColor(Landroid/content/Context;Landroid/widget/Button;ZZLcom/miui/common/card/models/AdvCardModel;)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v1, 0x7f090059

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/miui/common/card/models/AdvCardModel;->buttonOpenColor2:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result v4

    :goto_0
    :try_start_1
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/miui/common/card/models/AdvCardModel;->buttonColor2:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v5

    :goto_1
    :try_start_2
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorNormal2:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorPressed2:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    move v8, v7

    move v9, v1

    :goto_2
    :try_start_3
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorOpenN2:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v1

    :try_start_4
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorOpenP2:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v2

    move v6, v2

    move v7, v1

    :goto_3
    :try_start_5
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorDownloading2:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v1

    :goto_4
    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    invoke-static {v11, v7, v6}, Lcom/miui/securitycenter/utils/c;->bqF(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    :cond_1
    :goto_5
    if-eqz p3, :cond_5

    if-eqz v4, :cond_4

    move v1, v4

    :goto_6
    if-eqz v1, :cond_7

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_7
    if-eqz v2, :cond_8

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    return-void

    :catch_0
    move-exception v8

    move v8, v7

    move v9, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move v1, v2

    :goto_9
    move v7, v1

    goto :goto_3

    :catch_2
    move-exception v1

    move v1, v3

    goto :goto_4

    :cond_2
    if-eqz p4, :cond_3

    if-eqz v1, :cond_1

    invoke-static {v11, v1, v1}, Lcom/miui/securitycenter/utils/c;->bqF(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    goto :goto_5

    :cond_3
    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    invoke-static {v11, v9, v8}, Lcom/miui/securitycenter/utils/c;->bqF(FII)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_6

    :cond_5
    if-eqz v5, :cond_6

    move v1, v5

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    const v1, 0x106000b

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_7

    :cond_8
    const v1, 0x7f0202db

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_8

    :catch_3
    move-exception v2

    goto :goto_9

    :catch_4
    move-exception v8

    goto/16 :goto_1

    :catch_5
    move-exception v8

    goto/16 :goto_0
.end method

.method private setDonwloadButtonStatus(Landroid/content/Context;Landroid/widget/Button;Lcom/miui/common/card/models/AdvCardModel;)V
    .locals 7

    const v5, 0x7f070826

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    move-result-object v1

    iget-object v2, p3, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/cards/i;->Dj(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p3, Lcom/miui/common/card/models/AdvCardModel;->buttonOpen:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move v6, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/common/card/models/AdvCardModel;->setButtonBGandTextColor(Landroid/content/Context;Landroid/widget/Button;ZZLcom/miui/common/card/models/AdvCardModel;)V

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v1

    iget-object v2, p3, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/cards/f;->CH(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p3, Lcom/miui/common/card/models/AdvCardModel;->button:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move v6, v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2, v5}, Landroid/widget/Button;->setText(I)V

    move v6, v4

    move v4, v0

    goto :goto_0

    :pswitch_2
    const v1, 0x7f070827

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    move v6, v4

    move v4, v0

    goto :goto_0

    :pswitch_3
    const v1, 0x7f070828

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    move v6, v4

    move v4, v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/miui/securityscan/cards/f;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/f;

    move-result-object v1

    iget-object v2, p3, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/securityscan/cards/f;->CI(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

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

    :goto_1
    move v6, v4

    move v4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

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


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/miui/common/card/models/AdvCardModel$AdvViewHolder;-><init>(Lcom/miui/common/card/models/AdvCardModel;Landroid/view/View;)V

    return-object v0
.end method

.method public getActionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAllDownloadNum()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/card/models/AdvCardModel;->allDownloadNum:J

    return-wide v0
.end method

.method public getClickMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->clickMonitorUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getCta()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->cta:Ljava/lang/String;

    return-object v0
.end method

.method public getDataId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method public getEx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->id:I

    return v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->landingPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiImgUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->position:I

    return v0
.end method

.method public getPositionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->positionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetType()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->targetType:I

    return v0
.end method

.method public getTemplate()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    return v0
.end method

.method public getTestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->testId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsePosition()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->usePosition:I

    return v0
.end method

.method public getValidTime()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/card/models/AdvCardModel;->validTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getViewMonitorUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->viewMonitorUrls:[Ljava/lang/String;

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

    iput v0, p0, Lcom/miui/common/card/models/AdvCardModel;->id:I

    const-string/jumbo v0, "dataId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dataId:Ljava/lang/String;

    const-string/jumbo v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->title:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->summary:Ljava/lang/String;

    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->source:Ljava/lang/String;

    const-string/jumbo v0, "landingPageUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->landingPageUrl:Ljava/lang/String;

    const-string/jumbo v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    const-string/jumbo v0, "cta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->cta:Ljava/lang/String;

    const-string/jumbo v0, "allDownloadNum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/common/card/models/AdvCardModel;->allDownloadNum:J

    const-string/jumbo v0, "iconUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->icon:Ljava/lang/String;

    const-string/jumbo v0, "actionUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->actionUrl:Ljava/lang/String;

    const-string/jumbo v0, "deeplink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->deepLink:Ljava/lang/String;

    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    const-string/jumbo v0, "ex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->ex:Ljava/lang/String;

    const-string/jumbo v0, "local"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/common/card/models/AdvCardModel;->local:Z

    const-string/jumbo v0, "extra"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "validTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/common/card/models/AdvCardModel;->validTime:J

    const-string/jumbo v2, "position"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/miui/common/card/models/AdvCardModel;->position:I

    const-string/jumbo v2, "autoOpen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/common/card/models/AdvCardModel;->autoOpen:Z

    const-string/jumbo v2, "button"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/card/models/AdvCardModel;->button:Ljava/lang/String;

    const-string/jumbo v2, "buttonOpen"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/card/models/AdvCardModel;->buttonOpen:Ljava/lang/String;

    const-string/jumbo v2, "buttonColor2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/card/models/AdvCardModel;->buttonColor2:Ljava/lang/String;

    const-string/jumbo v2, "buttonOpenColor2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/card/models/AdvCardModel;->buttonOpenColor2:Ljava/lang/String;

    const-string/jumbo v2, "btnBgColorNormal2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorNormal2:Ljava/lang/String;

    const-string/jumbo v2, "btnBgColorPressed2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorPressed2:Ljava/lang/String;

    const-string/jumbo v2, "btnBgColorOpenN2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorOpenN2:Ljava/lang/String;

    const-string/jumbo v2, "btnBgColorOpenP2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorOpenP2:Ljava/lang/String;

    const-string/jumbo v2, "btnBgColorDownloading2"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->btnBgColorDownloading2:Ljava/lang/String;

    :cond_2
    const-string/jumbo v0, "imgUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v0, v1

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_3

    if-ge v0, v3, :cond_3

    iget-object v4, p0, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "targetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/common/card/models/AdvCardModel;->targetType:I

    const-string/jumbo v0, "viewMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->viewMonitorUrls:[Ljava/lang/String;

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/miui/common/card/models/AdvCardModel;->viewMonitorUrls:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "clickMonitorUrls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/common/card/models/AdvCardModel;->clickMonitorUrls:[Ljava/lang/String;

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel;->clickMonitorUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public isAutoOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/AdvCardModel;->autoOpen:Z

    return v0
.end method

.method public isLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/AdvCardModel;->local:Z

    return v0
.end method

.method isSupported(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.xiaomi.market"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/miui/securityscan/utils/i;->Jb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    iget v1, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Lcom/miui/securityscan/cards/d;->CB(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/AdvCardModel;->closeNormalAdNewStyle(Lcom/miui/securityscan/MainActivity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/miui/common/card/models/AdvCardModel;->onAdvContentClick(Lcom/miui/securityscan/MainActivity;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00c5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->usePosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dataId:Ljava/lang/String;

    :goto_2
    invoke-static {v0}, Lcom/miui/securityscan/d/a;->KR(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/miui/securitycenter/b;->bsx()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/AdvCardModel;->closeNormalAdNewStyle(Lcom/miui/securityscan/MainActivity;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/AdvCardModel;->closeNormalAd(Lcom/miui/securityscan/MainActivity;Landroid/view/View;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/miui/common/card/models/AdvCardModel;->onAdvButtonClick(Lcom/miui/securityscan/MainActivity;)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->usePosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel;->dataId:Ljava/lang/String;

    :goto_3
    invoke-static {v0}, Lcom/miui/securityscan/d/a;->KK(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/miui/common/card/models/AdvCardModel;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00c5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->actionUrl:Ljava/lang/String;

    return-void
.end method

.method public setAllDownloadNum(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/common/card/models/AdvCardModel;->allDownloadNum:J

    return-void
.end method

.method public setClickMonitorUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->clickMonitorUrls:[Ljava/lang/String;

    return-void
.end method

.method public setCta(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->cta:Ljava/lang/String;

    return-void
.end method

.method public setEx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->ex:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/AdvCardModel;->id:I

    return-void
.end method

.method public setLandingPageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->landingPageUrl:Ljava/lang/String;

    return-void
.end method

.method public setMultiImgUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->multiImgUrls:[Ljava/lang/String;

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->object:Ljava/lang/Object;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPositionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->positionId:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->source:Ljava/lang/String;

    return-void
.end method

.method public setTargetType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/AdvCardModel;->targetType:I

    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/AdvCardModel;->template:I

    return-void
.end method

.method public setTestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->testId:Ljava/lang/String;

    return-void
.end method

.method public setViewMonitorUrls([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel;->viewMonitorUrls:[Ljava/lang/String;

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
