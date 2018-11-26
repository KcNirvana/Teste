.class public final enum Lcom/miui/hybrid/accessory/sdk/a/f$a;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic bgN:[Lcom/miui/hybrid/accessory/sdk/a/f$a;

.field public static final enum bgO:Lcom/miui/hybrid/accessory/sdk/a/f$a;

.field public static final enum bgP:Lcom/miui/hybrid/accessory/sdk/a/f$a;

.field private static final c:Ljava/util/Map;


# instance fields
.field private final d:S

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    const-string/jumbo v1, "STATE"

    const-string/jumbo v2, "state"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/miui/hybrid/accessory/sdk/a/f$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->bgP:Lcom/miui/hybrid/accessory/sdk/a/f$a;

    new-instance v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    const-string/jumbo v1, "PACKAGE_NAME"

    const-string/jumbo v2, "packageName"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/miui/hybrid/accessory/sdk/a/f$a;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->bgO:Lcom/miui/hybrid/accessory/sdk/a/f$a;

    new-array v0, v5, [Lcom/miui/hybrid/accessory/sdk/a/f$a;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/f$a;->bgP:Lcom/miui/hybrid/accessory/sdk/a/f$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/f$a;->bgO:Lcom/miui/hybrid/accessory/sdk/a/f$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->bgN:[Lcom/miui/hybrid/accessory/sdk/a/f$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->c:Ljava/util/Map;

    const-class v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;

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

    check-cast v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    sget-object v2, Lcom/miui/hybrid/accessory/sdk/a/f$a;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/miui/hybrid/accessory/sdk/a/f$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-short v0, p3

    iput-short v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->d:S

    iput-object p4, p0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/hybrid/accessory/sdk/a/f$a;
    .locals 1

    const-class v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    return-object v0
.end method

.method public static values()[Lcom/miui/hybrid/accessory/sdk/a/f$a;
    .locals 1

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->bgN:[Lcom/miui/hybrid/accessory/sdk/a/f$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/hybrid/accessory/sdk/a/f$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f$a;->e:Ljava/lang/String;

    return-object v0
.end method
