.class final Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;Lcom/miui/weather2/view/onOnePage/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration$a;-><init>(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->a(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;->b(Lcom/miui/weather2/view/onOnePage/MinuteRainIllustration;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
