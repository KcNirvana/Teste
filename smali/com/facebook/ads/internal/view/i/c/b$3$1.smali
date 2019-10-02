.class Lcom/facebook/ads/internal/view/i/c/b$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/i/c/b$3;->a(Lcom/facebook/ads/internal/view/i/b/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/c/b$3;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/b$3;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/b$3$1;->a:Lcom/facebook/ads/internal/view/i/c/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/facebook/ads/internal/view/i/c/b$3$1$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/view/i/c/b$3$1$1;-><init>(Lcom/facebook/ads/internal/view/i/c/b$3$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
