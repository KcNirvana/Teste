.class Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;
.super Ljava/lang/Object;
.source "MorphoPanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

.field final synthetic val$module:Lcom/android/camera/module/MorphoPanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;Lcom/android/camera/module/MorphoPanoramaModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;->this$1:Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask;

    iput-object p2, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;->val$module:Lcom/android/camera/module/MorphoPanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/MorphoPanoramaModule$StillProcTask$1;->val$module:Lcom/android/camera/module/MorphoPanoramaModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/MorphoPanoramaModule;->-wrap9(Lcom/android/camera/module/MorphoPanoramaModule;Z)V

    return-void
.end method
