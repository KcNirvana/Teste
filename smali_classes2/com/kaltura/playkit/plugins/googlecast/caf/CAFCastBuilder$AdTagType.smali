.class public final enum Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;
.super Ljava/lang/Enum;
.source "CAFCastBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdTagType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

.field public static final enum UNKNOWN:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

.field public static final enum VAST:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

.field public static final enum VMAP:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->UNKNOWN:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    const-string v1, "VMAP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->VMAP:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    const-string v1, "VAST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->VAST:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->UNKNOWN:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->VMAP:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->VAST:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->$VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->$VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$AdTagType;

    return-object v0
.end method
