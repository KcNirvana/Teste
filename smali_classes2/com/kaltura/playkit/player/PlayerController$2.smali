.class Lcom/kaltura/playkit/player/PlayerController$2;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/player/PlayerController;->initProgressAction()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/player/PlayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerController$2;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$2;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$200(Lcom/kaltura/playkit/player/PlayerController;)V

    return-void
.end method
