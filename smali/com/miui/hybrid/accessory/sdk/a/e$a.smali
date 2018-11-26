.class public final enum Lcom/miui/hybrid/accessory/sdk/a/e$a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum bgr:Lcom/miui/hybrid/accessory/sdk/a/e$a;

.field public static final enum bgs:Lcom/miui/hybrid/accessory/sdk/a/e$a;

.field private static final bgt:Ljava/util/Map;

.field private static final synthetic bgu:[Lcom/miui/hybrid/accessory/sdk/a/e$a;

.field public static final enum bgv:Lcom/miui/hybrid/accessory/sdk/a/e$a;


# instance fields
.field private final e:S

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;

    const-string/jumbo v1, "DOWNLOAD_URL"

    const-string/jumbo v2, "downloadUrl"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/miui/hybrid/accessory/sdk/a/e$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgv:Lcom/miui/hybrid/accessory/sdk/a/e$a;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;

    const-string/jumbo v1, "NAME"

    const-string/jumbo v2, "name"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/miui/hybrid/accessory/sdk/a/e$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgr:Lcom/miui/hybrid/accessory/sdk/a/e$a;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;

    const-string/jumbo v1, "KEYWORDS"

    const-string/jumbo v2, "keywords"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/miui/hybrid/accessory/sdk/a/e$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgs:Lcom/miui/hybrid/accessory/sdk/a/e$a;

    new-array v0, v6, [Lcom/miui/hybrid/accessory/sdk/a/e$a;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgv:Lcom/miui/hybrid/accessory/sdk/a/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgr:Lcom/miui/hybrid/accessory/sdk/a/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgs:Lcom/miui/hybrid/accessory/sdk/a/e$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgu:[Lcom/miui/hybrid/accessory/sdk/a/e$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgt:Ljava/util/Map;

    const-class v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;

    sget-object v2, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgt:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/hybrid/accessory/sdk/a/e$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-short v0, p3

    iput-short v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e$a;->e:S

    iput-object p4, p0, Lcom/miui/hybrid/accessory/sdk/a/e$a;->f:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/hybrid/accessory/sdk/a/e$a;
    .locals 1

    const-class v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;

    return-object v0
.end method

.method public static values()[Lcom/miui/hybrid/accessory/sdk/a/e$a;
    .locals 1

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/e$a;->bgu:[Lcom/miui/hybrid/accessory/sdk/a/e$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/hybrid/accessory/sdk/a/e$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/e$a;->f:Ljava/lang/String;

    return-object v0
.end method
