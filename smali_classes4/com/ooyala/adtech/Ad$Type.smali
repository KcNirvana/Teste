.class public final enum Lcom/ooyala/adtech/Ad$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ooyala/adtech/Ad$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IMAGESET_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

.field public static final enum INVENTORY:Lcom/ooyala/adtech/Ad$Type;

.field public static final enum SPLASH_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

.field public static final enum STANDARD_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

.field public static final enum STANDARD_SPLASH:Lcom/ooyala/adtech/Ad$Type;

.field public static final enum STANDARD_SPOT:Lcom/ooyala/adtech/Ad$Type;

.field public static final enum UNKNOWN:Lcom/ooyala/adtech/Ad$Type;

.field public static final enum VIDEO_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

.field private static final synthetic a:[Lcom/ooyala/adtech/Ad$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/ooyala/adtech/Ad$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ooyala/adtech/Ad$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Ad$Type;->UNKNOWN:Lcom/ooyala/adtech/Ad$Type;

    new-instance v0, Lcom/ooyala/adtech/Ad$Type;

    const-string v1, "INVENTORY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ooyala/adtech/Ad$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    new-instance v0, Lcom/ooyala/adtech/Ad$Type;

    const-string v1, "STANDARD_SPOT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ooyala/adtech/Ad$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Ad$Type;->STANDARD_SPOT:Lcom/ooyala/adtech/Ad$Type;

    new-instance v0, Lcom/ooyala/adtech/Ad$Type;

    const-string v1, "STANDARD_OVERLAY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ooyala/adtech/Ad$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Ad$Type;->STANDARD_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    new-instance v0, Lcom/ooyala/adtech/Ad$Type;

    const-string v1, "VIDEO_OVERLAY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ooyala/adtech/Ad$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Ad$Type;->VIDEO_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    new-instance v0, Lcom/ooyala/adtech/Ad$Type;

    const-string v1, "IMAGESET_OVERLAY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ooyala/adtech/Ad$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Ad$Type;->IMAGESET_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    new-instance v0, Lcom/ooyala/adtech/Ad$Type;

    const-string v1, "SPLASH_OVERLAY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ooyala/adtech/Ad$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Ad$Type;->SPLASH_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    new-instance v0, Lcom/ooyala/adtech/Ad$Type;

    const-string v1, "STANDARD_SPLASH"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ooyala/adtech/Ad$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ooyala/adtech/Ad$Type;->STANDARD_SPLASH:Lcom/ooyala/adtech/Ad$Type;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ooyala/adtech/Ad$Type;

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->UNKNOWN:Lcom/ooyala/adtech/Ad$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->INVENTORY:Lcom/ooyala/adtech/Ad$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->STANDARD_SPOT:Lcom/ooyala/adtech/Ad$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->STANDARD_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->VIDEO_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->IMAGESET_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->SPLASH_OVERLAY:Lcom/ooyala/adtech/Ad$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ooyala/adtech/Ad$Type;->STANDARD_SPLASH:Lcom/ooyala/adtech/Ad$Type;

    aput-object v1, v0, v9

    sput-object v0, Lcom/ooyala/adtech/Ad$Type;->a:[Lcom/ooyala/adtech/Ad$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/adtech/Ad$Type;
    .locals 1

    const-class v0, Lcom/ooyala/adtech/Ad$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ooyala/adtech/Ad$Type;

    return-object p0
.end method

.method public static values()[Lcom/ooyala/adtech/Ad$Type;
    .locals 1

    sget-object v0, Lcom/ooyala/adtech/Ad$Type;->a:[Lcom/ooyala/adtech/Ad$Type;

    invoke-virtual {v0}, [Lcom/ooyala/adtech/Ad$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ooyala/adtech/Ad$Type;

    return-object v0
.end method
