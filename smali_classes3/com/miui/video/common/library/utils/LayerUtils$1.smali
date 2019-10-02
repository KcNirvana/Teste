.class Lcom/miui/video/common/library/utils/LayerUtils$1;
.super Ljava/lang/Object;
.source "LayerUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/library/utils/LayerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/library/utils/LayerUtils;


# direct methods
.method constructor <init>(Lcom/miui/video/common/library/utils/LayerUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$1;->this$0:Lcom/miui/video/common/library/utils/LayerUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "AnimatorListener"

    const-string v0, "onAnimationCancel"

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "AnimatorListener"

    const-string v0, "onAnimationEnd"

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils$1;->this$0:Lcom/miui/video/common/library/utils/LayerUtils;

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/LayerUtils;->showNext()Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "AnimatorListener"

    const-string v0, "onAnimationRepeat"

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "AnimatorListener"

    const-string v0, "onAnimationStart"

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
