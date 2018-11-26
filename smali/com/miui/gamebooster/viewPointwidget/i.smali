.class final Lcom/miui/gamebooster/viewPointwidget/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic gE:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/viewPointwidget/i;->gE:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/i;->gE:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ju(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/i;->gE:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ju(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/i;->gE:Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;

    invoke-static {v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;->ju(Lcom/miui/gamebooster/viewPointwidget/ViewPointListVideoItem;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {v0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    :cond_0
    return-void
.end method
