.class synthetic Lmiui/externalassistant/SdkErrorActivity$3;
.super Ljava/lang/Object;
.source "SdkErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/externalassistant/SdkErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$externalassistant$SdkConstants$SdkError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lmiui/externalassistant/SdkConstants$SdkError;->values()[Lmiui/externalassistant/SdkConstants$SdkError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/externalassistant/SdkErrorActivity$3;->$SwitchMap$miui$externalassistant$SdkConstants$SdkError:[I

    :try_start_0
    sget-object v0, Lmiui/externalassistant/SdkErrorActivity$3;->$SwitchMap$miui$externalassistant$SdkConstants$SdkError:[I

    sget-object v1, Lmiui/externalassistant/SdkConstants$SdkError;->NO_SDK:Lmiui/externalassistant/SdkConstants$SdkError;

    invoke-virtual {v1}, Lmiui/externalassistant/SdkConstants$SdkError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lmiui/externalassistant/SdkErrorActivity$3;->$SwitchMap$miui$externalassistant$SdkConstants$SdkError:[I

    sget-object v1, Lmiui/externalassistant/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/externalassistant/SdkConstants$SdkError;

    invoke-virtual {v1}, Lmiui/externalassistant/SdkConstants$SdkError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
