.class synthetic Lcom/miui/video/player/service/corelocalvideo/CLVDialog$1;
.super Ljava/lang/Object;
.source "CLVDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/corelocalvideo/CLVDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$video$player$service$corelocalvideo$CLVDialog$DialogMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;->values()[Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/video/player/service/corelocalvideo/CLVDialog$1;->$SwitchMap$com$miui$video$player$service$corelocalvideo$CLVDialog$DialogMode:[I

    :try_start_0
    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/CLVDialog$1;->$SwitchMap$com$miui$video$player$service$corelocalvideo$CLVDialog$DialogMode:[I

    sget-object v1, Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;->DIALOG_MIDDLE:Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;

    invoke-virtual {v1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/CLVDialog$1;->$SwitchMap$com$miui$video$player$service$corelocalvideo$CLVDialog$DialogMode:[I

    sget-object v1, Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;->DIALOG_BOTTOM:Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;

    invoke-virtual {v1}, Lcom/miui/video/player/service/corelocalvideo/CLVDialog$DialogMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
