.class public final enum Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;
.super Ljava/lang/Enum;
.source "CDNHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

.field public static final enum kHeaderHost:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

.field public static final enum kHeaderHostAndType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

.field public static final enum kHeaderNone:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

.field public static final enum kHeaderType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

.field public static final enum kHeaderTypeAndHost:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const-string v1, "kHeaderHost"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderHost:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    new-instance v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const-string v1, "kHeaderType"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    new-instance v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const-string v1, "kHeaderHostAndType"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderHostAndType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    new-instance v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const-string v1, "kHeaderTypeAndHost"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderTypeAndHost:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    new-instance v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const-string v1, "kHeaderNone"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderNone:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    sget-object v1, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderHost:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderHostAndType:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderTypeAndHost:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->kHeaderNone:Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->$VALUES:[Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;
    .locals 1

    const-class v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    return-object p0
.end method

.method public static values()[Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;
    .locals 1

    sget-object v0, Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->$VALUES:[Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    invoke-virtual {v0}, [Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/npaw/youbora/youboralib/services/resourceparser/cdn/CDNHeader$HeaderType;

    return-object v0
.end method
