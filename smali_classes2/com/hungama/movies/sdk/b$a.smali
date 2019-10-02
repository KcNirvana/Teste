.class Lcom/hungama/movies/sdk/b$a;
.super Ljava/lang/Object;
.source "HungamaPlayerController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hungama/movies/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hungama/movies/sdk/b;


# direct methods
.method private constructor <init>(Lcom/hungama/movies/sdk/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hungama/movies/sdk/b$a;->a:Lcom/hungama/movies/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hungama/movies/sdk/b;Lcom/hungama/movies/sdk/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hungama/movies/sdk/b$a;-><init>(Lcom/hungama/movies/sdk/b;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    const-string v0, "mi_mobile_withoutDownload"

    const-string v1, "mi_mobile_withoutDownload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/hungama/movies/sdk/b$a;->a:Lcom/hungama/movies/sdk/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hungama/movies/sdk/b;->a(Lcom/hungama/movies/sdk/b;Z)Z

    iget-object p1, p0, Lcom/hungama/movies/sdk/b$a;->a:Lcom/hungama/movies/sdk/b;

    invoke-static {p1}, Lcom/hungama/movies/sdk/b;->a(Lcom/hungama/movies/sdk/b;)V

    :cond_0
    return-void
.end method
