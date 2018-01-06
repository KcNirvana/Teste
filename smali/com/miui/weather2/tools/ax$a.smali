.class Lcom/miui/weather2/tools/ax$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/tools/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/ax;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/tools/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/ax$a;->a:Lcom/miui/weather2/tools/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/tools/ax;Lcom/miui/weather2/tools/ay;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/tools/ax$a;-><init>(Lcom/miui/weather2/tools/ax;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/ax$a;->b:Ljava/lang/String;

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/tools/ax$a;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->a(Lcom/miui/weather2/tools/ax;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/tools/ax$a;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->a(Lcom/miui/weather2/tools/ax;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/tools/ax$a;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/ax$a;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/tools/ax$a;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->b(Lcom/miui/weather2/tools/ax;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/ax$c;

    invoke-interface {v0}, Lcom/miui/weather2/tools/ax$c;->b()V

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/tools/ax$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/tools/ax$a;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->c(Lcom/miui/weather2/tools/ax;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/tools/ax$a;->a:Lcom/miui/weather2/tools/ax;

    invoke-static {v0}, Lcom/miui/weather2/tools/ax;->c(Lcom/miui/weather2/tools/ax;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/ax$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/weather2/tools/ax;->e()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_2
    return-void
.end method
