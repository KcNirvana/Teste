.class public Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OpenSubtitlesException;
.super Ljava/lang/Exception;
.source "OpenSubtitlesException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;)V
    .locals 0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/online/opensubtitle/OSStatus;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
