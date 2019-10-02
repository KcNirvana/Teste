.class synthetic Lio/lindstrom/m3u8/model/KeyMethod$1;
.super Ljava/lang/Object;
.source "KeyMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/lindstrom/m3u8/model/KeyMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$lindstrom$m3u8$model$KeyMethod:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lio/lindstrom/m3u8/model/KeyMethod;->values()[Lio/lindstrom/m3u8/model/KeyMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/lindstrom/m3u8/model/KeyMethod$1;->$SwitchMap$io$lindstrom$m3u8$model$KeyMethod:[I

    :try_start_0
    sget-object v0, Lio/lindstrom/m3u8/model/KeyMethod$1;->$SwitchMap$io$lindstrom$m3u8$model$KeyMethod:[I

    sget-object v1, Lio/lindstrom/m3u8/model/KeyMethod;->AES_128:Lio/lindstrom/m3u8/model/KeyMethod;

    invoke-virtual {v1}, Lio/lindstrom/m3u8/model/KeyMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/lindstrom/m3u8/model/KeyMethod$1;->$SwitchMap$io$lindstrom$m3u8$model$KeyMethod:[I

    sget-object v1, Lio/lindstrom/m3u8/model/KeyMethod;->SAMPLE_AES:Lio/lindstrom/m3u8/model/KeyMethod;

    invoke-virtual {v1}, Lio/lindstrom/m3u8/model/KeyMethod;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
