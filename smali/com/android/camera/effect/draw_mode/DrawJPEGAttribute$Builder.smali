.class public Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
.super Ljava/lang/Object;
.source "DrawJPEGAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTarget:I

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    return-void
.end method


# virtual methods
.method public algorithmName(Ljava/lang/String;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    return-object v0
.end method

.method public data([B)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    return-object p0
.end method

.method public date(J)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-wide p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    return-object p0
.end method

.method public effectIndex(I)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    return-object p0
.end method

.method public effectRectAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    return-object p0
.end method

.method public jpegOrientation(I)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    return-object p0
.end method

.method public location(Landroid/location/Location;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    return-object p0
.end method

.method public mirror(Z)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-boolean p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    return-object p0
.end method

.method public orientation(I)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    return-object p0
.end method

.method public pictureInfo(Lcom/android/camera/PictureInfo;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/android/camera/PictureInfo;

    return-object p0
.end method

.method public previewSize(II)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    return-object p0
.end method

.method public shootRotation(F)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    return-object p0
.end method

.method public size(II)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput p2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute$Builder;->jpegAttr:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iput-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    return-object p0
.end method
