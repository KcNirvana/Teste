.class public Lcom/flybird/FBDocumentAssistor;
.super Ljava/lang/Object;
.source "FBDocumentAssistor.java"


# static fields
.field private static DEFAULT_FONT_SIZE:F = 0.0f

.field public static final DEFAULT_LOCALE:Ljava/lang/String; = "zh_CN"

.field private static DP:F = 0.0f

.field static SCREEN_HEIGHT:I = 0x0

.field static SCREEN_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FBDocumentAssistor"

.field private static final TIMEOUT_WAIT_UI:J = 0x3a98L

.field private static mAssetResMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/flybird/FBDocumentAssistor;->DP:F

    sput v1, Lcom/flybird/FBDocumentAssistor;->SCREEN_WIDTH:I

    sput v1, Lcom/flybird/FBDocumentAssistor;->SCREEN_HEIGHT:I

    sput v0, Lcom/flybird/FBDocumentAssistor;->DEFAULT_FONT_SIZE:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flybird/FBDocumentAssistor;->mAssetResMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/flybird/FBDocumentAssistor;->createTimerBlock(Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;)V

    return-void
.end method

.method public static calcTextSize(Lcom/flybird/FBDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;IZFFFZ)[F
    .locals 14

    const/4 v0, 0x2

    new-array v13, v0, [F

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-static/range {v0 .. v13}, Lcom/flybird/FBDocumentAssistor;->calcTextSizeBlock(Lcom/flybird/FBDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;IZFFFZ[F)V

    return-object v13
.end method

.method public static calcTextSizeBlock(Lcom/flybird/FBDocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;IZFFFZ[F)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, p13, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, p13, v1

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flybird/FBLabel;

    if-nez v1, :cond_8

    new-instance v1, Lcom/flybird/FBLabel;

    iget-object v2, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/flybird/FBLabel;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    iget-object v2, p0, Lcom/flybird/FBDocument;->mLabelMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    :goto_1
    move/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/flybird/FBLabel;->setSupportEmoji(Z)V

    invoke-virtual {v2}, Lcom/flybird/FBLabel;->getInnerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    if-lez p7, :cond_1

    invoke-virtual {v1, p7}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    if-eqz p8, :cond_2

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_2
    const-string/jumbo v3, "bold"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_3
    const-string/jumbo v3, "line-through"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_4
    :goto_2
    iput-object p2, v2, Lcom/flybird/FBLabel;->mTextStr:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/flybird/FBLabel;->initText()V

    const/4 v2, 0x0

    cmpl-float v2, p9, v2

    if-lez v2, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p9, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_7

    new-instance v2, Lcom/flybird/FBDocumentAssistor$4;

    invoke-direct {v2, v1}, Lcom/flybird/FBDocumentAssistor$4;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :goto_3
    move/from16 v0, p11

    invoke-static {v0, p10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->measure(II)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    aput v3, p13, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    aput v1, p13, v2

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v3, "underline"

    invoke-virtual {p6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v4

    or-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_3

    :cond_8
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public static checkAllowCamera(Lcom/flybird/FBDocument;)I
    .locals 4

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public static createEmbedView(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;Lcom/alipay/android/app/template/FBPluginFactory;)Lcom/flybird/FBView;
    .locals 1

    new-instance v0, Lcom/flybird/FBPluginView;

    invoke-direct {v0, p0, p2, p3}, Lcom/flybird/FBPluginView;-><init>(Landroid/content/Context;Lcom/flybird/FBDocument;Lcom/alipay/android/app/template/FBPluginFactory;)V

    return-object v0
.end method

.method public static createTimer(Lcom/flybird/FBDocument;IZI)Lcom/flybird/CountDownTimer;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Lcom/flybird/CountDownTimer;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v6, Landroid/os/ConditionVariable;

    invoke-direct {v6}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v0, Lcom/flybird/FBDocumentAssistor$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/flybird/FBDocumentAssistor$2;-><init>(Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v0}, Lcom/flybird/FBDocument;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {v6, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    :goto_0
    const/4 v0, 0x0

    aget-object v0, v5, v0

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3, v5}, Lcom/flybird/FBDocumentAssistor;->createTimerBlock(Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;)V

    goto :goto_0
.end method

.method private static createTimerBlock(Lcom/flybird/FBDocument;IZI[Lcom/flybird/CountDownTimer;)V
    .locals 10

    const/4 v9, 0x0

    int-to-long v2, p1

    if-eqz p2, :cond_0

    const-wide/32 v2, 0x54c5638

    :cond_0
    new-instance v1, Lcom/flybird/FBDocumentAssistor$1;

    int-to-long v4, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/flybird/FBDocumentAssistor$1;-><init>(JJLcom/flybird/FBDocument;ZI)V

    aput-object v1, p4, v9

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->isOnloadFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, p4, v9

    invoke-virtual {v0}, Lcom/flybird/CountDownTimer;->start()Lcom/flybird/CountDownTimer;

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    aget-object v1, p4, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static destroyTimer(Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;)I
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v1, Lcom/flybird/FBDocumentAssistor$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/flybird/FBDocumentAssistor$3;-><init>(Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;Landroid/os/ConditionVariable;)V

    invoke-virtual {p0, v1}, Lcom/flybird/FBDocument;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/flybird/FBDocumentAssistor;->destroyTimerBlock(Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;)I

    goto :goto_0
.end method

.method public static destroyTimerBlock(Lcom/flybird/FBDocument;Lcom/flybird/CountDownTimer;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/flybird/CountDownTimer;->cancel()V

    const-string/jumbo v0, "faywong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancel timer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flybird/FBDocument;->mTimerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static extractDataFromTplStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBDocumentAssistor"

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAndroidApiLevel()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getDefaultFontSize()F
    .locals 1

    sget v0, Lcom/flybird/FBDocumentAssistor;->DEFAULT_FONT_SIZE:F

    return v0
.end method

.method public static getDp()F
    .locals 1

    sget v0, Lcom/flybird/FBDocumentAssistor;->DP:F

    return v0
.end method

.method public static getImageSize(Lcom/flybird/FBDocument;Ljava/lang/String;Ljava/lang/String;)[F
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [F

    aput v1, v2, v6

    aput v1, v2, v7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "undefined"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "www"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/flybird/FBDocument;->findViewById(Ljava/lang/String;)Lcom/flybird/FBView;

    move-result-object v0

    check-cast v0, Lcom/flybird/FBImg;

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/flybird/FBImg;->mWidth:I

    int-to-float v1, v1

    aput v1, v2, v6

    iget v0, v0, Lcom/flybird/FBImg;->mHeight:I

    int-to-float v0, v0

    aput v0, v2, v7

    :cond_3
    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "indicatior"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v4, "alipay_msp_indicatior_loading"

    invoke-static {v0, v4}, Lcom/alipay/birdnest/a/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    if-eqz v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v1, "FBDocumentAssistor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "offline pkg intercept res(getimagesize) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/app/template/FBResourceClient$Type;->DRAWABLE:Lcom/alipay/android/app/template/FBResourceClient$Type;

    invoke-interface {v0, p2, v1}, Lcom/alipay/android/app/template/FBResourceClient;->shouldInterceptResource(Ljava/lang/String;Lcom/alipay/android/app/template/FBResourceClient$Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v7

    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    const/4 v1, -0x1

    const/4 v4, -0x1

    :try_start_0
    invoke-static {p2, v0, v1, v4}, Lcom/flybird/FBTools;->getLocalDrawable(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBDocumentAssistor"

    const-string/jumbo v4, "exception"

    invoke-static {v1, v4, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    goto :goto_2

    :cond_6
    move-object v1, v3

    goto :goto_3

    :cond_7
    if-nez v1, :cond_a

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->f()Lcom/alipay/birdnest/api/BirdNestEngine$h;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v4, v4, Lcom/alipay/birdnest/api/BirdNestEngine$g;->m:Ljava/lang/String;

    const-string/jumbo v5, "drawable"

    invoke-interface {v0, v3, p2, v4, v5}, Lcom/alipay/birdnest/api/BirdNestEngine$h;->getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    instance-of v3, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_9

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_4
    const-string/jumbo v1, "FBDocumentAssistor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getImageSize from ext bundle, drawable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-nez v0, :cond_8

    const-string/jumbo v0, "FBDocumentAssistor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FATAL ERROR!, The image(src: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") is not existed!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    aput v1, v2, v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    aput v0, v2, v7

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto :goto_4

    :cond_a
    move-object v0, v1

    goto :goto_5
.end method

.method public static getLocale(Lcom/flybird/FBDocument;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->h()Lcom/alipay/birdnest/api/BirdNestEngine$i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->h()Lcom/alipay/birdnest/api/BirdNestEngine$i;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$i;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "zh_CN"

    goto :goto_0
.end method

.method public static getScreenHeight()F
    .locals 1

    sget v0, Lcom/flybird/FBDocumentAssistor;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    return v0
.end method

.method public static getScreenHeight(Lcom/flybird/FBDocument;)F
    .locals 3

    const/4 v2, 0x1

    if-nez p0, :cond_0

    sget v0, Lcom/flybird/FBDocumentAssistor;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->screenSize:[I

    aget v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument;->screenSize:[I

    sget v1, Lcom/flybird/FBDocumentAssistor;->SCREEN_HEIGHT:I

    aput v1, v0, v2

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDocument;->screenSize:[I

    aget v0, v0, v2

    int-to-float v0, v0

    goto :goto_0
.end method

.method public static getScreenWidth()F
    .locals 1

    sget v0, Lcom/flybird/FBDocumentAssistor;->SCREEN_WIDTH:I

    int-to-float v0, v0

    return v0
.end method

.method public static getScreenWidth(Lcom/flybird/FBDocument;)F
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    sget v0, Lcom/flybird/FBDocumentAssistor;->SCREEN_WIDTH:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument;->screenSize:[I

    aget v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument;->screenSize:[I

    sget v1, Lcom/flybird/FBDocumentAssistor;->SCREEN_WIDTH:I

    aput v1, v0, v2

    :cond_1
    iget-object v0, p0, Lcom/flybird/FBDocument;->screenSize:[I

    aget v0, v0, v2

    int-to-float v0, v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/flybird/FBDocumentAssistor;->initSystemFontSize(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v0

    sput v0, Lcom/flybird/FBDocumentAssistor;->DP:F

    invoke-static {p0}, Lcom/flybird/FBTools;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/flybird/FBDocumentAssistor;->SCREEN_WIDTH:I

    invoke-static {p0}, Lcom/flybird/FBTools;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/flybird/FBDocumentAssistor;->SCREEN_HEIGHT:I

    return-void
.end method

.method private static initSystemFontSize(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sput v0, Lcom/flybird/FBDocumentAssistor;->DEFAULT_FONT_SIZE:F

    return-void
.end method

.method public static native nativeOnTimer(II)I
.end method

.method public static putAssetRes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/flybird/FBDocumentAssistor;->mAssetResMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static readAssertFile(Lcom/flybird/FBDocument;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/flybird/FBDocumentAssistor;->readAssetsFile(Lcom/flybird/FBDocument;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readAssetsFile(Lcom/flybird/FBDocument;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/flybird/FBDocumentAssistor;->mAssetResMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/flybird/FBDocumentAssistor;->mAssetResMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/flybird/FBDocumentAssistor;->mAssetResMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/flybird/FBDocumentAssistor;->mAssetResMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getContextResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getContextResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/flybird/FBTools;->readAssetsFileWithManager(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v1, v1, Lcom/alipay/birdnest/api/BirdNestEngine$g;->x:Lcom/alipay/android/app/template/FBResourceClient;

    if-eqz v1, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v0, "FBDocumentAssistor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offline pkg intercept res(readassets) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/app/template/FBResourceClient$Type;->STRING:Lcom/alipay/android/app/template/FBResourceClient$Type;

    invoke-interface {v1, p1, v0}, Lcom/alipay/android/app/template/FBResourceClient;->shouldInterceptResource(Ljava/lang/String;Lcom/alipay/android/app/template/FBResourceClient$Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/flybird/FBDocument;->getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->f()Lcom/alipay/birdnest/api/BirdNestEngine$h;

    move-result-object v1

    iget-object v2, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v3, v3, Lcom/alipay/birdnest/api/BirdNestEngine$g;->m:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/alipay/birdnest/api/BirdNestEngine$h;->getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/flybird/FBTools;->readAssetsFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/flybird/FBDocumentAssistor;->mAssetResMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method
