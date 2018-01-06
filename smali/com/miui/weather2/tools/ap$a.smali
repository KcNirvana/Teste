.class public final enum Lcom/miui/weather2/tools/ap$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/tools/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/weather2/tools/ap$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/weather2/tools/ap$a;

.field public static final enum b:Lcom/miui/weather2/tools/ap$a;

.field public static final enum c:Lcom/miui/weather2/tools/ap$a;

.field public static final enum d:Lcom/miui/weather2/tools/ap$a;

.field private static final synthetic e:[Lcom/miui/weather2/tools/ap$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/miui/weather2/tools/ap$a;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/miui/weather2/tools/ap$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/weather2/tools/ap$a;->a:Lcom/miui/weather2/tools/ap$a;

    new-instance v0, Lcom/miui/weather2/tools/ap$a;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/miui/weather2/tools/ap$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/weather2/tools/ap$a;->b:Lcom/miui/weather2/tools/ap$a;

    new-instance v0, Lcom/miui/weather2/tools/ap$a;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/miui/weather2/tools/ap$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/weather2/tools/ap$a;->c:Lcom/miui/weather2/tools/ap$a;

    new-instance v0, Lcom/miui/weather2/tools/ap$a;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/miui/weather2/tools/ap$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/weather2/tools/ap$a;->d:Lcom/miui/weather2/tools/ap$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/weather2/tools/ap$a;

    sget-object v1, Lcom/miui/weather2/tools/ap$a;->a:Lcom/miui/weather2/tools/ap$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/weather2/tools/ap$a;->b:Lcom/miui/weather2/tools/ap$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/weather2/tools/ap$a;->c:Lcom/miui/weather2/tools/ap$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/weather2/tools/ap$a;->d:Lcom/miui/weather2/tools/ap$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/weather2/tools/ap$a;->e:[Lcom/miui/weather2/tools/ap$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/weather2/tools/ap$a;
    .locals 1

    const-class v0, Lcom/miui/weather2/tools/ap$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/tools/ap$a;

    return-object v0
.end method

.method public static values()[Lcom/miui/weather2/tools/ap$a;
    .locals 1

    sget-object v0, Lcom/miui/weather2/tools/ap$a;->e:[Lcom/miui/weather2/tools/ap$a;

    invoke-virtual {v0}, [Lcom/miui/weather2/tools/ap$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/weather2/tools/ap$a;

    return-object v0
.end method
