.class final enum Lss/q$a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lss/q$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lss/q$a$a;

.field public static final enum b:Lss/q$a$a;

.field public static final enum c:Lss/q$a$a;

.field public static final enum d:Lss/q$a$a;

.field public static final enum e:Lss/q$a$a;

.field private static final synthetic f:[Lss/q$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lss/q$a$a;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lss/q$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/q$a$a;->a:Lss/q$a$a;

    new-instance v0, Lss/q$a$a;

    const-string/jumbo v1, "MISSING_SCHEME"

    invoke-direct {v0, v1, v3}, Lss/q$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/q$a$a;->b:Lss/q$a$a;

    new-instance v0, Lss/q$a$a;

    const-string/jumbo v1, "UNSUPPORTED_SCHEME"

    invoke-direct {v0, v1, v4}, Lss/q$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/q$a$a;->c:Lss/q$a$a;

    new-instance v0, Lss/q$a$a;

    const-string/jumbo v1, "INVALID_PORT"

    invoke-direct {v0, v1, v5}, Lss/q$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/q$a$a;->d:Lss/q$a$a;

    new-instance v0, Lss/q$a$a;

    const-string/jumbo v1, "INVALID_HOST"

    invoke-direct {v0, v1, v6}, Lss/q$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lss/q$a$a;->e:Lss/q$a$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lss/q$a$a;

    sget-object v1, Lss/q$a$a;->a:Lss/q$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lss/q$a$a;->b:Lss/q$a$a;

    aput-object v1, v0, v3

    sget-object v1, Lss/q$a$a;->c:Lss/q$a$a;

    aput-object v1, v0, v4

    sget-object v1, Lss/q$a$a;->d:Lss/q$a$a;

    aput-object v1, v0, v5

    sget-object v1, Lss/q$a$a;->e:Lss/q$a$a;

    aput-object v1, v0, v6

    sput-object v0, Lss/q$a$a;->f:[Lss/q$a$a;

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

.method public static valueOf(Ljava/lang/String;)Lss/q$a$a;
    .locals 1

    const-class v0, Lss/q$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lss/q$a$a;

    return-object v0
.end method

.method public static values()[Lss/q$a$a;
    .locals 1

    sget-object v0, Lss/q$a$a;->f:[Lss/q$a$a;

    invoke-virtual {v0}, [Lss/q$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lss/q$a$a;

    return-object v0
.end method
