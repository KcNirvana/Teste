.class Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$CubicEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "GallerySpeedController.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CubicEaseInOutInterpolator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GallerySpeedController$CubicEaseInOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    if-gez v1, :cond_0

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    return v2

    :cond_0
    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    mul-float v1, v1, v2

    return v1
.end method
