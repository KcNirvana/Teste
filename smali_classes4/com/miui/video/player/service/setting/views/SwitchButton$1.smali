.class Lcom/miui/video/player/service/setting/views/SwitchButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/setting/views/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/setting/views/SwitchButton;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->access$002(Lcom/miui/video/player/service/setting/views/SwitchButton;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;

    invoke-static {p1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->access$100(Lcom/miui/video/player/service/setting/views/SwitchButton;)I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;

    invoke-static {v0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->access$200(Lcom/miui/video/player/service/setting/views/SwitchButton;)I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;

    invoke-virtual {v0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;

    invoke-static {v0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->access$300(Lcom/miui/video/player/service/setting/views/SwitchButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;

    new-instance v1, Lcom/miui/video/player/service/setting/views/SwitchButton$1$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/player/service/setting/views/SwitchButton$1$1;-><init>(Lcom/miui/video/player/service/setting/views/SwitchButton$1;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/setting/views/SwitchButton;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->mCanceled:Z

    return-void
.end method
