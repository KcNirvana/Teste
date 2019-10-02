.class Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;
.super Ljava/lang/Object;
.source "PlayerContentView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$OnPlayerGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private hasJudgeScaleType:Z

.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->hasJudgeScaleType:Z

    return-void
.end method


# virtual methods
.method public canProcessGesture()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onDrag(FF)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result v1

    add-float/2addr v0, p1

    add-float/2addr v1, p2

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1100(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result p1

    sub-float p1, v1, p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v2, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1602(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1600(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$700(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result p2

    mul-float p1, p1, p2

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object p2

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v3}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getBaseRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p2, p1, p1, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1600(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;->onAlphaChanged(F)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1400(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDragBegin(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;)Z
    .locals 2

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$3;->$SwitchMap$com$miui$video$galleryplus$galleryvideo$widget$PlayerGestureDetector$DragDirection:[I

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector$DragDirection;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$400(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$500(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerGestureDetector;->isScaling()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$602(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;I)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;->onExitStart()V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$800(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$702(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$902(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1102(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDragEnd()V
    .locals 0

    return-void
.end method

.method public onScale(FFF)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->hasJudgeScaleType:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Z

    move-result v0

    if-nez v0, :cond_0

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$602(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;I)I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1602(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;->onExitStart()V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$800(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$702(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$902(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1102(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->hasJudgeScaleType:Z

    :cond_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$800(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result v2

    mul-float v2, v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1602(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;F)F

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->updateSuppMatrix(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1600(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;->onAlphaChanged(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$800(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result v0

    const/high16 v2, 0x40900000    # 4.5f

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    cmpg-float v0, p1, v1

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1300(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1400(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)V

    :cond_3
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onScaleBegin()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->hasJudgeScaleType:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onScaleEnd()V
    .locals 9

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$600(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$800(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)F

    move-result v3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$1500(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/ITransformView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    new-instance v8, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationZoomRunnable;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationZoomRunnable;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;FFFFLcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;)V

    invoke-virtual {v0, v8}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    new-instance v8, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationZoomRunnable;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$AnimationZoomRunnable;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;FFFFLcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;)V

    invoke-virtual {v0, v8}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSingleTap(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;->access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView;)Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/PlayerContentView$OnPlayerContentListener;->onSingleTap()V

    return-void
.end method
