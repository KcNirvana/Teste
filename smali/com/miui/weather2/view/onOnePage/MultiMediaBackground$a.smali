.class Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->b:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;Lcom/miui/weather2/view/onOnePage/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;-><init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public run()V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->b:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;I)I

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->b:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    new-array v1, v4, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->b:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->e(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/VideoView;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1, v5, v6, v7}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->a(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->b:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->b:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->k(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/Button;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->b:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v2, v2, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    aput-object v2, v1, v4

    invoke-static {v0, v1, v5, v6, v7}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->b(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;[Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground$a;->b:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
