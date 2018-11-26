.class public final enum Lcom/miui/antivirus/model/AppModel$CardType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic akZ:[Lcom/miui/antivirus/model/AppModel$CardType;

.field public static final enum ala:Lcom/miui/antivirus/model/AppModel$CardType;

.field public static final enum alb:Lcom/miui/antivirus/model/AppModel$CardType;

.field public static final enum alc:Lcom/miui/antivirus/model/AppModel$CardType;

.field public static final enum ald:Lcom/miui/antivirus/model/AppModel$CardType;

.field public static final enum ale:Lcom/miui/antivirus/model/AppModel$CardType;

.field public static final enum alf:Lcom/miui/antivirus/model/AppModel$CardType;

.field public static final enum alg:Lcom/miui/antivirus/model/AppModel$CardType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/antivirus/model/AppModel$CardType;

    const-string/jumbo v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/miui/antivirus/model/AppModel$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->alf:Lcom/miui/antivirus/model/AppModel$CardType;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$CardType;

    const-string/jumbo v1, "HEADER"

    invoke-direct {v0, v1, v4}, Lcom/miui/antivirus/model/AppModel$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->ald:Lcom/miui/antivirus/model/AppModel$CardType;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$CardType;

    const-string/jumbo v1, "DIVIDER"

    invoke-direct {v0, v1, v5}, Lcom/miui/antivirus/model/AppModel$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->alc:Lcom/miui/antivirus/model/AppModel$CardType;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$CardType;

    const-string/jumbo v1, "WIFI"

    invoke-direct {v0, v1, v6}, Lcom/miui/antivirus/model/AppModel$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->alg:Lcom/miui/antivirus/model/AppModel$CardType;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$CardType;

    const-string/jumbo v1, "APP"

    invoke-direct {v0, v1, v7}, Lcom/miui/antivirus/model/AppModel$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$CardType;

    const-string/jumbo v1, "SAFE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/model/AppModel$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->ale:Lcom/miui/antivirus/model/AppModel$CardType;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$CardType;

    const-string/jumbo v1, "BUTTON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/model/AppModel$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->alb:Lcom/miui/antivirus/model/AppModel$CardType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/antivirus/model/AppModel$CardType;

    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alf:Lcom/miui/antivirus/model/AppModel$CardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ald:Lcom/miui/antivirus/model/AppModel$CardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alc:Lcom/miui/antivirus/model/AppModel$CardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alg:Lcom/miui/antivirus/model/AppModel$CardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ala:Lcom/miui/antivirus/model/AppModel$CardType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->ale:Lcom/miui/antivirus/model/AppModel$CardType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antivirus/model/AppModel$CardType;->alb:Lcom/miui/antivirus/model/AppModel$CardType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->akZ:[Lcom/miui/antivirus/model/AppModel$CardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/model/AppModel$CardType;
    .locals 1

    const-class v0, Lcom/miui/antivirus/model/AppModel$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/AppModel$CardType;

    return-object v0
.end method

.method public static values()[Lcom/miui/antivirus/model/AppModel$CardType;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/model/AppModel$CardType;->akZ:[Lcom/miui/antivirus/model/AppModel$CardType;

    return-object v0
.end method
