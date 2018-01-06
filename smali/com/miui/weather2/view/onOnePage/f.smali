.class Lcom/miui/weather2/view/onOnePage/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/f;->a:Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/f;->a:Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;

    invoke-virtual {v0}, Lcom/miui/weather2/view/onOnePage/AudioAdvertisment;->f()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
