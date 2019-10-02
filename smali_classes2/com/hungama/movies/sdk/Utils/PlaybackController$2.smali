.class Lcom/hungama/movies/sdk/Utils/PlaybackController$2;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/movies/sdk/Utils/PlaybackController;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;


# direct methods
.method constructor <init>(Lcom/hungama/movies/sdk/Utils/PlaybackController;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$100(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializeView inside"

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v0}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$200(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    new-instance v2, Lcom/hungama/movies/sdk/a;

    invoke-direct {v2}, Lcom/hungama/movies/sdk/a;-><init>()V

    iput-object v2, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v2, v2, Lcom/hungama/movies/sdk/Utils/PlaybackController;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->i:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v2, v2, Lcom/hungama/movies/sdk/Utils/PlaybackController;->contentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v1}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$300(Lcom/hungama/movies/sdk/Utils/PlaybackController;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v2}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$300(Lcom/hungama/movies/sdk/Utils/PlaybackController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v2}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$400(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v2}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$500(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->t:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v2}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$600(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Lcom/hungama/movies/sdk/Utils/VideoPlayingType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, v1, Lcom/hungama/movies/sdk/a;->q:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v2}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$700(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hungama/movies/sdk/a;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-virtual {v1, v2}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/Utils/PlaybackController;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v2}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$800(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hungama/movies/sdk/a;->a(Z)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v2}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$200(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hungama/movies/sdk/a;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v2}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$900(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hungama/movies/sdk/a;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v2, v2, Lcom/hungama/movies/sdk/Utils/PlaybackController;->contentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hungama/movies/sdk/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v2, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-static {v2}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$400(Lcom/hungama/movies/sdk/Utils/PlaybackController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hungama/movies/sdk/a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    invoke-virtual {v1, v0}, Lcom/hungama/movies/sdk/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v0, v0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playerEventsCallback:Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/Utils/PlayerEventsCallback;)V

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v0, v0, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playVideoClass:Lcom/hungama/movies/sdk/a;

    iget-object v1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$2;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    iget-object v1, v1, Lcom/hungama/movies/sdk/Utils/PlaybackController;->playbackControllerCallback:Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;

    invoke-virtual {v0, v1}, Lcom/hungama/movies/sdk/a;->a(Lcom/hungama/movies/sdk/Utils/PlaybackControllerCallback;)V

    :cond_1
    return-void
.end method
