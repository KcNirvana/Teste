.class public Lcom/miui/video/common/library/utils/LayerUtils$Layer;
.super Ljava/lang/Object;
.source "LayerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/utils/LayerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private anim:Landroid/animation/AnimatorSet;

.field private delay:I

.field private duration:I

.field private obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnim()Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->anim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getDelay()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->delay:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->duration:I

    return v0
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->params:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->view:Landroid/view/View;

    return-object v0
.end method

.method public setAnim(Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->anim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setDelay(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->delay:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->duration:I

    return-void
.end method

.method public setObj(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->obj:Ljava/lang/Object;

    return-void
.end method

.method public setParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->params:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->view:Landroid/view/View;

    return-void
.end method
