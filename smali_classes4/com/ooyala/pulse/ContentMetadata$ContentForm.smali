.class public final enum Lcom/ooyala/pulse/ContentMetadata$ContentForm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/pulse/ContentMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/pulse/ContentMetadata$ContentForm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LONG:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

.field public static final enum SHORT:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

.field public static final enum UNKNOWN:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

.field private static final synthetic a:[Lcom/ooyala/pulse/ContentMetadata$ContentForm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/pulse/ContentMetadata$ContentForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/ContentMetadata$ContentForm;->UNKNOWN:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    new-instance v0, Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    const-string v1, "LONG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/pulse/ContentMetadata$ContentForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/ContentMetadata$ContentForm;->LONG:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    new-instance v0, Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    const-string v1, "SHORT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ooyala/pulse/ContentMetadata$ContentForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/pulse/ContentMetadata$ContentForm;->SHORT:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    sget-object v1, Lcom/ooyala/pulse/ContentMetadata$ContentForm;->UNKNOWN:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/pulse/ContentMetadata$ContentForm;->LONG:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/pulse/ContentMetadata$ContentForm;->SHORT:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ooyala/pulse/ContentMetadata$ContentForm;->a:[Lcom/ooyala/pulse/ContentMetadata$ContentForm;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/pulse/ContentMetadata$ContentForm;
    .locals 1

    const-class v0, Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/pulse/ContentMetadata$ContentForm;
    .locals 1

    sget-object v0, Lcom/ooyala/pulse/ContentMetadata$ContentForm;->a:[Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    invoke-virtual {v0}, [Lcom/ooyala/pulse/ContentMetadata$ContentForm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    return-object v0
.end method
