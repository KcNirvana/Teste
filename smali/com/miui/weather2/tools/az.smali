.class Lcom/miui/weather2/tools/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/ax;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/az;->a:Lcom/miui/weather2/tools/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/az;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->a(Lcom/miui/weather2/tools/ax;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/az;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->a(Lcom/miui/weather2/tools/ax;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/tools/az;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/az;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/az;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/ax$c;

    invoke-interface {v0}, Lcom/miui/weather2/tools/ax$c;->a()V

    iget-object v0, p0, Lcom/miui/weather2/tools/az;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/ax$c;

    invoke-interface {v0}, Lcom/miui/weather2/tools/ax$c;->c()V

    :cond_1
    return-void
.end method
