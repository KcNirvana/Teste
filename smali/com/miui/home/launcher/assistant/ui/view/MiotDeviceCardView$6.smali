.class synthetic Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$6;
.super Ljava/lang/Object;
.source "MiotDeviceCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$home$launcher$assistant$module$carditem$MiotDeviceItem$LoginState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->values()[Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$6;->$SwitchMap$com$miui$home$launcher$assistant$module$carditem$MiotDeviceItem$LoginState:[I

    :try_start_0
    sget-object v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$6;->$SwitchMap$com$miui$home$launcher$assistant$module$carditem$MiotDeviceItem$LoginState:[I

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->CTA_NOT_PASSED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$6;->$SwitchMap$com$miui$home$launcher$assistant$module$carditem$MiotDeviceItem$LoginState:[I

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->REFRESH_SUCCESS:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$6;->$SwitchMap$com$miui$home$launcher$assistant$module$carditem$MiotDeviceItem$LoginState:[I

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->LOGGING_IN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$6;->$SwitchMap$com$miui$home$launcher$assistant$module$carditem$MiotDeviceItem$LoginState:[I

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->MIJIA_UNINSTALLED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$6;->$SwitchMap$com$miui$home$launcher$assistant$module$carditem$MiotDeviceItem$LoginState:[I

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->NOT_LOGIN:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$6;->$SwitchMap$com$miui$home$launcher$assistant$module$carditem$MiotDeviceItem$LoginState:[I

    sget-object v1, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->REFRESH_FAILED:Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem$LoginState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
