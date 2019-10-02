.class public interface abstract Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView;
.super Ljava/lang/Object;
.source "IRenderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;,
        Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$ISurfaceHolder;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_FIT_PARENT:I = 0x0

.field public static final ASPECT_RATIO_MATCH_PARENT:I = 0x1


# virtual methods
.method public abstract asView()Landroid/view/View;
.end method

.method public abstract setAspectRatio(I)V
.end method

.method public abstract setRenderCallback(Lcom/miui/video/galleryplus/galleryvideo/videoview/IRenderView$IRenderCallback;)V
.end method

.method public abstract setVideoSize(II)V
.end method
