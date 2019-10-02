.class public Lcom/miui/video/localvideoplayer/FrameParams$Builder;
.super Ljava/lang/Object;
.source "FrameParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/localvideoplayer/FrameParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfig:Landroid/graphics/Bitmap$Config;

.field private mCount:I

.field private mFd:Landroid/os/ParcelFileDescriptor;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/miui/video/localvideoplayer/FrameParams;
    .locals 2

    new-instance v0, Lcom/miui/video/localvideoplayer/FrameParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/localvideoplayer/FrameParams;-><init>(Lcom/miui/video/localvideoplayer/FrameParams$1;)V

    iget v1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mWidth:I

    invoke-static {v0, v1}, Lcom/miui/video/localvideoplayer/FrameParams;->access$102(Lcom/miui/video/localvideoplayer/FrameParams;I)I

    iget v1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mHeight:I

    invoke-static {v0, v1}, Lcom/miui/video/localvideoplayer/FrameParams;->access$202(Lcom/miui/video/localvideoplayer/FrameParams;I)I

    iget v1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mCount:I

    invoke-static {v0, v1}, Lcom/miui/video/localvideoplayer/FrameParams;->access$302(Lcom/miui/video/localvideoplayer/FrameParams;I)I

    iget-object v1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mConfig:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/miui/video/localvideoplayer/FrameParams;->access$402(Lcom/miui/video/localvideoplayer/FrameParams;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1}, Lcom/miui/video/localvideoplayer/FrameParams;->access$502(Lcom/miui/video/localvideoplayer/FrameParams;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fd must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Config must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConfig(Landroid/graphics/Bitmap$Config;)Lcom/miui/video/localvideoplayer/FrameParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public setCount(I)Lcom/miui/video/localvideoplayer/FrameParams$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mCount:I

    return-object p0
.end method

.method public setFileDescriptor(Landroid/os/ParcelFileDescriptor;)Lcom/miui/video/localvideoplayer/FrameParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mFd:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public setHeight(I)Lcom/miui/video/localvideoplayer/FrameParams$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mHeight:I

    return-object p0
.end method

.method public setWidth(I)Lcom/miui/video/localvideoplayer/FrameParams$Builder;
    .locals 0

    iput p1, p0, Lcom/miui/video/localvideoplayer/FrameParams$Builder;->mWidth:I

    return-object p0
.end method
