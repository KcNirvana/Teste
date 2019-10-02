.class Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$2;
.super Ljava/lang/Object;
.source "StickyFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;->runAnim(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

.field final synthetic val$comeIn:Z

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$2;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment;

    iput-boolean p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$2;->val$comeIn:Z

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$2;->val$comeIn:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$2;->val$runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/fragments/StickyFragment$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
