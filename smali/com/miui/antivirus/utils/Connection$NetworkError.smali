.class public final enum Lcom/miui/antivirus/utils/Connection$NetworkError;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum aoA:Lcom/miui/antivirus/utils/Connection$NetworkError;

.field public static final enum aoB:Lcom/miui/antivirus/utils/Connection$NetworkError;

.field private static final synthetic aoC:[Lcom/miui/antivirus/utils/Connection$NetworkError;

.field public static final enum aou:Lcom/miui/antivirus/utils/Connection$NetworkError;

.field public static final enum aov:Lcom/miui/antivirus/utils/Connection$NetworkError;

.field public static final enum aow:Lcom/miui/antivirus/utils/Connection$NetworkError;

.field public static final enum aox:Lcom/miui/antivirus/utils/Connection$NetworkError;

.field public static final enum aoy:Lcom/miui/antivirus/utils/Connection$NetworkError;

.field public static final enum aoz:Lcom/miui/antivirus/utils/Connection$NetworkError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/antivirus/utils/Connection$NetworkError;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/miui/antivirus/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aou:Lcom/miui/antivirus/utils/Connection$NetworkError;

    new-instance v0, Lcom/miui/antivirus/utils/Connection$NetworkError;

    const-string/jumbo v1, "URL_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/miui/antivirus/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoB:Lcom/miui/antivirus/utils/Connection$NetworkError;

    new-instance v0, Lcom/miui/antivirus/utils/Connection$NetworkError;

    const-string/jumbo v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/miui/antivirus/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aox:Lcom/miui/antivirus/utils/Connection$NetworkError;

    new-instance v0, Lcom/miui/antivirus/utils/Connection$NetworkError;

    const-string/jumbo v1, "AUTH_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/miui/antivirus/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aov:Lcom/miui/antivirus/utils/Connection$NetworkError;

    new-instance v0, Lcom/miui/antivirus/utils/Connection$NetworkError;

    const-string/jumbo v1, "CLIENT_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/miui/antivirus/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aow:Lcom/miui/antivirus/utils/Connection$NetworkError;

    new-instance v0, Lcom/miui/antivirus/utils/Connection$NetworkError;

    const-string/jumbo v1, "SERVER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoz:Lcom/miui/antivirus/utils/Connection$NetworkError;

    new-instance v0, Lcom/miui/antivirus/utils/Connection$NetworkError;

    const-string/jumbo v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoy:Lcom/miui/antivirus/utils/Connection$NetworkError;

    new-instance v0, Lcom/miui/antivirus/utils/Connection$NetworkError;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoA:Lcom/miui/antivirus/utils/Connection$NetworkError;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/miui/antivirus/utils/Connection$NetworkError;

    sget-object v1, Lcom/miui/antivirus/utils/Connection$NetworkError;->aou:Lcom/miui/antivirus/utils/Connection$NetworkError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoB:Lcom/miui/antivirus/utils/Connection$NetworkError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/antivirus/utils/Connection$NetworkError;->aox:Lcom/miui/antivirus/utils/Connection$NetworkError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/antivirus/utils/Connection$NetworkError;->aov:Lcom/miui/antivirus/utils/Connection$NetworkError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/antivirus/utils/Connection$NetworkError;->aow:Lcom/miui/antivirus/utils/Connection$NetworkError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoz:Lcom/miui/antivirus/utils/Connection$NetworkError;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoy:Lcom/miui/antivirus/utils/Connection$NetworkError;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoA:Lcom/miui/antivirus/utils/Connection$NetworkError;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoC:[Lcom/miui/antivirus/utils/Connection$NetworkError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/utils/Connection$NetworkError;
    .locals 1

    const-class v0, Lcom/miui/antivirus/utils/Connection$NetworkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/utils/Connection$NetworkError;

    return-object v0
.end method

.method public static values()[Lcom/miui/antivirus/utils/Connection$NetworkError;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/utils/Connection$NetworkError;->aoC:[Lcom/miui/antivirus/utils/Connection$NetworkError;

    return-object v0
.end method
