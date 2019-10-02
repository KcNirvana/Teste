.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;
.super Ljava/lang/Object;
.source "InlineManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->hideCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$1000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$1000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$1100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7$1;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$1002(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$1000(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
