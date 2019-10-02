.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7$1;
.super Ljava/lang/Object;
.source "InlineManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7$1;->this$1:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7$1;->this$1:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;

    iget-object p1, p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$7;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->access$1100(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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
