.class public final enum Lcom/miui/permcenter/root/RootHeaderType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum OI:Lcom/miui/permcenter/root/RootHeaderType;

.field public static final enum OJ:Lcom/miui/permcenter/root/RootHeaderType;

.field private static final synthetic OK:[Lcom/miui/permcenter/root/RootHeaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/permcenter/root/RootHeaderType;

    const-string/jumbo v1, "ACCEPT"

    invoke-direct {v0, v1, v2}, Lcom/miui/permcenter/root/RootHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/permcenter/root/RootHeaderType;->OI:Lcom/miui/permcenter/root/RootHeaderType;

    new-instance v0, Lcom/miui/permcenter/root/RootHeaderType;

    const-string/jumbo v1, "REJECT"

    invoke-direct {v0, v1, v3}, Lcom/miui/permcenter/root/RootHeaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/permcenter/root/RootHeaderType;->OJ:Lcom/miui/permcenter/root/RootHeaderType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/permcenter/root/RootHeaderType;

    sget-object v1, Lcom/miui/permcenter/root/RootHeaderType;->OI:Lcom/miui/permcenter/root/RootHeaderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/permcenter/root/RootHeaderType;->OJ:Lcom/miui/permcenter/root/RootHeaderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/permcenter/root/RootHeaderType;->OK:[Lcom/miui/permcenter/root/RootHeaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/permcenter/root/RootHeaderType;
    .locals 1

    const-class v0, Lcom/miui/permcenter/root/RootHeaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/root/RootHeaderType;

    return-object v0
.end method

.method public static values()[Lcom/miui/permcenter/root/RootHeaderType;
    .locals 1

    sget-object v0, Lcom/miui/permcenter/root/RootHeaderType;->OK:[Lcom/miui/permcenter/root/RootHeaderType;

    return-object v0
.end method
