.class public final enum Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;
.super Ljava/lang/Enum;
.source "CAFCastBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KalturaAssetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

.field public static final enum Epg:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

.field public static final enum Media:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

.field public static final enum Recording:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    const-string v1, "Media"

    const-string v2, "media"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;->Media:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    const-string v1, "Epg"

    const-string v2, "epg"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;->Epg:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    new-instance v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    const-string v1, "Recording"

    const-string v2, "recording"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;->Recording:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;->Media:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;->Epg:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;->Recording:Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;->$VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

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

    iput-object p3, p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;->$VALUES:[Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/plugins/googlecast/caf/CAFCastBuilder$KalturaAssetType;

    return-object v0
.end method
