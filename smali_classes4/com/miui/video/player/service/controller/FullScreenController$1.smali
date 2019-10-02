.class Lcom/miui/video/player/service/controller/FullScreenController$1;
.super Ljava/lang/Object;
.source "FullScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/controller/FullScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/controller/FullScreenController;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/controller/FullScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/controller/FullScreenController$1;->this$0:Lcom/miui/video/player/service/controller/FullScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/FullScreenController$1;->this$0:Lcom/miui/video/player/service/controller/FullScreenController;

    invoke-virtual {v0}, Lcom/miui/video/player/service/controller/FullScreenController;->hideController()V

    return-void
.end method
