.class public final enum Lcom/miui/weather2/model/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/weather2/model/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/weather2/model/k;

.field public static final enum b:Lcom/miui/weather2/model/k;

.field public static final enum c:Lcom/miui/weather2/model/k;

.field public static final enum d:Lcom/miui/weather2/model/k;

.field private static final synthetic f:[Lcom/miui/weather2/model/k;


# instance fields
.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/weather2/model/k;

    const-string v1, "POLLUTION_BETTER"

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/weather2/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/weather2/model/k;->a:Lcom/miui/weather2/model/k;

    new-instance v0, Lcom/miui/weather2/model/k;

    const-string v1, "POLLUTION_INVALID"

    invoke-direct {v0, v1, v3, v3}, Lcom/miui/weather2/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/weather2/model/k;->b:Lcom/miui/weather2/model/k;

    new-instance v0, Lcom/miui/weather2/model/k;

    const-string v1, "POLLUTION_WORSE"

    invoke-direct {v0, v1, v4, v4}, Lcom/miui/weather2/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/weather2/model/k;->c:Lcom/miui/weather2/model/k;

    new-instance v0, Lcom/miui/weather2/model/k;

    const-string v1, "POLLUTION_OVER"

    invoke-direct {v0, v1, v5, v5}, Lcom/miui/weather2/model/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/weather2/model/k;->d:Lcom/miui/weather2/model/k;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/weather2/model/k;

    sget-object v1, Lcom/miui/weather2/model/k;->a:Lcom/miui/weather2/model/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/weather2/model/k;->b:Lcom/miui/weather2/model/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/weather2/model/k;->c:Lcom/miui/weather2/model/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/weather2/model/k;->d:Lcom/miui/weather2/model/k;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/weather2/model/k;->f:[Lcom/miui/weather2/model/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/weather2/model/k;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/weather2/model/k;
    .locals 1

    const-class v0, Lcom/miui/weather2/model/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/model/k;

    return-object v0
.end method

.method public static values()[Lcom/miui/weather2/model/k;
    .locals 1

    sget-object v0, Lcom/miui/weather2/model/k;->f:[Lcom/miui/weather2/model/k;

    invoke-virtual {v0}, [Lcom/miui/weather2/model/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/weather2/model/k;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/model/k;->e:I

    return v0
.end method
