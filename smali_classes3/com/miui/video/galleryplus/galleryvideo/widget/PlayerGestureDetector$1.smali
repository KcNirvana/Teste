.class Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PlayerGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;->onSingleTap(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method
