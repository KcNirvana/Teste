.class public Lcom/miui/zeus/columbus/ad/AdChoicesView;
.super Landroid/widget/ImageView;
.source "AdChoicesView.java"


# static fields
.field private static final SIZE_IN_DP:I = 0xe

.field private static final TAG:Ljava/lang/String; = "AdChoicesView"

.field private static final TIME_OUT:I = 0x2710


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/zeus/columbus/ad/nativead/NativeAd;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p1, v0}, Lcom/miui/zeus/columbus/ad/AdChoicesView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/miui/zeus/columbus/ad/AdChoicesView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/miui/zeus/columbus/ad/nativead/NativeAd;->getDspBrand()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/zeus/columbus/ad/AdChoicesView;->setImageURL(Ljava/lang/String;)V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public setImageURL(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable;

    invoke-direct {v1, p0, p1}, Lcom/miui/zeus/columbus/ad/AdChoicesView$MyNetworkRunnable;-><init>(Lcom/miui/zeus/columbus/ad/AdChoicesView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
