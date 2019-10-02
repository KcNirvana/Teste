.class synthetic Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$1;
.super Ljava/lang/Object;
.source "CAFCastBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kaltura$playkit$plugins$googlecast$caf$CAFCastBuilder$StreamType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->values()[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$1;->$SwitchMap$com$kaltura$playkit$plugins$googlecast$caf$CAFCastBuilder$StreamType:[I

    :try_start_0
    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$1;->$SwitchMap$com$kaltura$playkit$plugins$googlecast$caf$CAFCastBuilder$StreamType:[I

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->VOD:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$1;->$SwitchMap$com$kaltura$playkit$plugins$googlecast$caf$CAFCastBuilder$StreamType:[I

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->LIVE:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    invoke-virtual {v1}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
