.class public Lmiui/video/transcoder/ColorConverterJNI;
.super Ljava/lang/Object;
.source "ColorConverterJNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "video_color_converter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native convertYuv420spToYvu420sp(II[B[BIIIIZ)V
.end method
