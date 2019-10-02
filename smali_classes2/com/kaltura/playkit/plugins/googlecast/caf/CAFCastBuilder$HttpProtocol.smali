.class public final enum Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;
.super Ljava/lang/Enum;
.source "CAFCastBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

.field public static final enum All:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

.field public static final enum Http:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

.field public static final enum Https:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    const-string v1, "Http"

    const-string v2, "http"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;->Http:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    const-string v1, "Https"

    const-string v2, "https"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;->Https:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    const-string v1, "All"

    const-string v2, "all"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;->All:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;->Http:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;->Https:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;->All:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;->$VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;->$VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$HttpProtocol;

    return-object v0
.end method
