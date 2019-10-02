.class public final enum Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;
.super Ljava/lang/Enum;
.source "PKMediaEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PKMediaEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaEntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

.field public static final enum DvrLive:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

.field public static final enum Live:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

.field public static final enum Unknown:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

.field public static final enum Vod:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    const-string v1, "Vod"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->Vod:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    new-instance v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    const-string v1, "Live"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->Live:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    new-instance v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    const-string v1, "DvrLive"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->DvrLive:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    new-instance v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    const-string v1, "Unknown"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->Unknown:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    sget-object v1, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->Vod:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->Live:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->DvrLive:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->Unknown:Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->$VALUES:[Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->$VALUES:[Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/PKMediaEntry$MediaEntryType;

    return-object v0
.end method
