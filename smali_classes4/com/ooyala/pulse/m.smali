.class final Lcom/ooyala/pulse/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/ooyala/pulse/PulseAdError;)Lcom/ooyala/adtech/TrackingError;
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/m$1;->a:[I

    invoke-virtual {p0}, Lcom/ooyala/pulse/PulseAdError;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_DISPLAY_ERROR:Lcom/ooyala/adtech/TrackingError;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/ooyala/adtech/TrackingError;->CREATIVE_NO_SUPPORTED_MEDIA_FILE_FOUND:Lcom/ooyala/adtech/TrackingError;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_TIMEOUT:Lcom/ooyala/adtech/TrackingError;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_NOT_FOUND:Lcom/ooyala/adtech/TrackingError;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
