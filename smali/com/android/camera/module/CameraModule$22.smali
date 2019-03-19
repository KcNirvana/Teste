.class Lcom/android/camera/module/CameraModule$22;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->consumeAiSceneResult(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$22;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/android/camera/ui/ToggleSwitch;Z)V
    .locals 3

    const/16 v2, 0x18

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$22;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isDoingAction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$22;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$22;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$22;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->-wrap39(Lcom/android/camera/module/CameraModule;II)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$22;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v2}, Lcom/android/camera/module/CameraModule;->-wrap30(Lcom/android/camera/module/CameraModule;I)V

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$22;->this$0:Lcom/android/camera/module/CameraModule;

    const-string/jumbo v1, "off"

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->-wrap42(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$22;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap15(Lcom/android/camera/module/CameraModule;)V

    goto :goto_0
.end method
