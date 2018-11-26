.class public final Lcom/miui/securityscan/a/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IQ:Landroid/util/SparseIntArray;

.field public static final IR:Landroid/util/SparseIntArray;

.field private static final RESOURCE:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/securitycenter/Application;->bsy()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/miui/securityscan/a/c;->RESOURCE:Landroid/content/res/Resources;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/securityscan/a/c;->IR:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/securityscan/a/c;->IQ:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/miui/securityscan/a/c;->IQ:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/securityscan/a/c;->IQ:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/securityscan/a/c;->IQ:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/securityscan/a/c;->IQ:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/securityscan/a/c;->IR:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/securityscan/a/c;->IR:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/securityscan/a/c;->IR:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/securityscan/a/c;->IR:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/securityscan/a/c;->IR:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/miui/securityscan/a/c;->IR:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ic(Landroid/content/Context;Z)V
    .locals 6

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sget-object v5, Lcom/miui/c/f;->bcF:Ljava/lang/String;

    if-eqz p1, :cond_1

    move v2, v0

    :goto_0
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    sget-object v5, Lcom/miui/c/f;->bcE:Ljava/lang/String;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/d/b;->bAZ(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static Id(Landroid/content/Context;Lcom/miui/common/customview/gif/GifImageView;Lcom/miui/securityscan/a/a;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x64

    invoke-virtual {p2, v2, v3}, Lcom/miui/securityscan/a/a;->HY(J)Lcom/miui/c/c;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p1, v6}, Lcom/miui/common/customview/gif/GifImageView;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/miui/c/c;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lcom/miui/c/c;->byY()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bje:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->bFK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/miui/common/b/q;->azV:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v2, v3}, Lcom/miui/common/b/q;->aJk(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v0}, Lcom/miui/common/customview/gif/GifImageView;->setVisibility(I)V

    invoke-static {p0, v2}, Lcom/miui/securityscan/a/c;->Ih(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/common/customview/gif/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p1, v6}, Lcom/miui/common/customview/gif/GifImageView;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    const v2, 0x7f09002d

    invoke-static {p1, v4, p0, v2, v1}, Lcom/miui/c/f;->bzu(Lcom/miui/common/customview/gif/GifImageView;Ljava/io/File;Landroid/content/Context;II)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static Ie(Landroid/content/Context;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/c/d;->getInstance(Landroid/content/Context;)Lcom/miui/c/d;

    move-result-object v0

    const-string/jumbo v1, "securitycenterScan"

    const-string/jumbo v2, "com.miui.securitycenter_skinindex"

    sget-object v3, Lcom/miui/systemAdSolution/common/AdTrackType$Type;->TRACK_VIEW:Lcom/miui/systemAdSolution/common/AdTrackType$Type;

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/c/d;->bze(Ljava/lang/String;Ljava/lang/String;Lcom/miui/systemAdSolution/common/AdTrackType$Type;J)V

    return-void
.end method

.method public static If(Lcom/miui/securityscan/a/a;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/securityscan/a/a;->HZ()Z

    move-result v2

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v4, v5}, Lcom/miui/securityscan/a/a;->HY(J)Lcom/miui/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/c/c;->byY()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static Ig(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x2

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v5, -0x3ee00000    # -10.0f

    const-wide/16 v6, 0x32

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v4, v5, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v5, v8, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v2, 0x50

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v8, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0x82

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static Ih(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    div-float v0, v2, v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
