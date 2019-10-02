.class Lcom/hungama/movies/sdk/Utils/PlaybackController$1;
.super Ljava/lang/Object;
.source "PlaybackController.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hungama/movies/sdk/Utils/PlaybackController;->setBitmap(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$1;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    iget-object v0, p0, Lcom/hungama/movies/sdk/Utils/PlaybackController$1;->this$0:Lcom/hungama/movies/sdk/Utils/PlaybackController;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/hungama/movies/sdk/Utils/PlaybackController;->access$000(Lcom/hungama/movies/sdk/Utils/PlaybackController;I)V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
