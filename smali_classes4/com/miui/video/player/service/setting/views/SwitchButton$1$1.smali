.class Lcom/miui/video/player/service/setting/views/SwitchButton$1$1;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/setting/views/SwitchButton$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/player/service/setting/views/SwitchButton$1;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/setting/views/SwitchButton$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1$1;->this$1:Lcom/miui/video/player/service/setting/views/SwitchButton$1;

    iput-boolean p2, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1$1;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1$1;->this$1:Lcom/miui/video/player/service/setting/views/SwitchButton$1;

    iget-object v0, v0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;

    invoke-static {v0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->access$300(Lcom/miui/video/player/service/setting/views/SwitchButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1$1;->this$1:Lcom/miui/video/player/service/setting/views/SwitchButton$1;

    iget-object v0, v0, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;

    invoke-static {v0}, Lcom/miui/video/player/service/setting/views/SwitchButton;->access$300(Lcom/miui/video/player/service/setting/views/SwitchButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1$1;->this$1:Lcom/miui/video/player/service/setting/views/SwitchButton$1;

    iget-object v1, v1, Lcom/miui/video/player/service/setting/views/SwitchButton$1;->this$0:Lcom/miui/video/player/service/setting/views/SwitchButton;

    iget-boolean v2, p0, Lcom/miui/video/player/service/setting/views/SwitchButton$1$1;->val$isChecked:Z

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method
