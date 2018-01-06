.class Lcom/miui/weather2/tools/ay;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/ax;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/ay;->a:Lcom/miui/weather2/tools/ax;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ay;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ay;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ay;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/ax$c;

    invoke-interface {v0}, Lcom/miui/weather2/tools/ax$c;->d()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/ay;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ay;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ay;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/ax$c;

    invoke-interface {v0}, Lcom/miui/weather2/tools/ax$c;->d()V

    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
