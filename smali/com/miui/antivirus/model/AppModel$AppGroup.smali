.class public final enum Lcom/miui/antivirus/model/AppModel$AppGroup;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic alh:[Lcom/miui/antivirus/model/AppModel$AppGroup;

.field public static final enum ali:Lcom/miui/antivirus/model/AppModel$AppGroup;

.field public static final enum alj:Lcom/miui/antivirus/model/AppModel$AppGroup;

.field public static final enum alk:Lcom/miui/antivirus/model/AppModel$AppGroup;

.field public static final enum all:Lcom/miui/antivirus/model/AppModel$AppGroup;

.field public static final enum alm:Lcom/miui/antivirus/model/AppModel$AppGroup;

.field public static final enum aln:Lcom/miui/antivirus/model/AppModel$AppGroup;

.field public static final enum alo:Lcom/miui/antivirus/model/AppModel$AppGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/antivirus/model/AppModel$AppGroup;

    const-string/jumbo v1, "SYSTEM"

    invoke-direct {v0, v1, v3}, Lcom/miui/antivirus/model/AppModel$AppGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->alm:Lcom/miui/antivirus/model/AppModel$AppGroup;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$AppGroup;

    const-string/jumbo v1, "VIRUS"

    invoke-direct {v0, v1, v4}, Lcom/miui/antivirus/model/AppModel$AppGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->alo:Lcom/miui/antivirus/model/AppModel$AppGroup;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$AppGroup;

    const-string/jumbo v1, "SIGN"

    invoke-direct {v0, v1, v5}, Lcom/miui/antivirus/model/AppModel$AppGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->alk:Lcom/miui/antivirus/model/AppModel$AppGroup;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$AppGroup;

    const-string/jumbo v1, "SMS"

    invoke-direct {v0, v1, v6}, Lcom/miui/antivirus/model/AppModel$AppGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->all:Lcom/miui/antivirus/model/AppModel$AppGroup;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$AppGroup;

    const-string/jumbo v1, "AUTH"

    invoke-direct {v0, v1, v7}, Lcom/miui/antivirus/model/AppModel$AppGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->ali:Lcom/miui/antivirus/model/AppModel$AppGroup;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$AppGroup;

    const-string/jumbo v1, "URL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/model/AppModel$AppGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->aln:Lcom/miui/antivirus/model/AppModel$AppGroup;

    new-instance v0, Lcom/miui/antivirus/model/AppModel$AppGroup;

    const-string/jumbo v1, "MONITOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/antivirus/model/AppModel$AppGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->alj:Lcom/miui/antivirus/model/AppModel$AppGroup;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/antivirus/model/AppModel$AppGroup;

    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alm:Lcom/miui/antivirus/model/AppModel$AppGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alo:Lcom/miui/antivirus/model/AppModel$AppGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alk:Lcom/miui/antivirus/model/AppModel$AppGroup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->all:Lcom/miui/antivirus/model/AppModel$AppGroup;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->ali:Lcom/miui/antivirus/model/AppModel$AppGroup;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->aln:Lcom/miui/antivirus/model/AppModel$AppGroup;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/antivirus/model/AppModel$AppGroup;->alj:Lcom/miui/antivirus/model/AppModel$AppGroup;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->alh:[Lcom/miui/antivirus/model/AppModel$AppGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/antivirus/model/AppModel$AppGroup;
    .locals 1

    const-class v0, Lcom/miui/antivirus/model/AppModel$AppGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/AppModel$AppGroup;

    return-object v0
.end method

.method public static values()[Lcom/miui/antivirus/model/AppModel$AppGroup;
    .locals 1

    sget-object v0, Lcom/miui/antivirus/model/AppModel$AppGroup;->alh:[Lcom/miui/antivirus/model/AppModel$AppGroup;

    return-object v0
.end method
