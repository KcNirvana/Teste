.class Lcom/android/camera/module/CameraModule$10;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;

.field final synthetic val$evAdjustable:Z


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/CameraModule$10;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean p2, p0, Lcom/android/camera/module/CameraModule$10;->val$evAdjustable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$10;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule$10;->val$evAdjustable:Z

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setEvAdjustable(Z)V

    return-void
.end method
