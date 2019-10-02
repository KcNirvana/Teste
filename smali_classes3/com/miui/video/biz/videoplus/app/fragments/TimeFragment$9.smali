.class Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$9;
.super Ljava/lang/Object;
.source "TimeFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->editModeExit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$9;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

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

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$9;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$200(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$9;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$200(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIEditTopTitleBar;->setTitleText(Ljava/lang/String;)V

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
