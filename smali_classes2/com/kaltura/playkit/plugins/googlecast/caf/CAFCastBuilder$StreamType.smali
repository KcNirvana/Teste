.class public final enum Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;
.super Ljava/lang/Enum;
.source "CAFCastBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

.field public static final enum LIVE:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

.field public static final enum VOD:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    const-string v1, "VOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->VOD:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    const-string v1, "LIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->LIVE:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->VOD:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->LIVE:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->$VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->$VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$StreamType;

    return-object v0
.end method
