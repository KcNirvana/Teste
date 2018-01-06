.class public final enum Lcom/xiaomi/passport/servicetoken/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/servicetoken/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/passport/servicetoken/a$a;

.field public static final enum b:Lcom/xiaomi/passport/servicetoken/a$a;

.field public static final enum c:Lcom/xiaomi/passport/servicetoken/a$a;

.field public static final enum d:Lcom/xiaomi/passport/servicetoken/a$a;

.field public static final enum e:Lcom/xiaomi/passport/servicetoken/a$a;

.field public static final enum f:Lcom/xiaomi/passport/servicetoken/a$a;

.field public static final enum g:Lcom/xiaomi/passport/servicetoken/a$a;

.field public static final enum h:Lcom/xiaomi/passport/servicetoken/a$a;

.field public static final enum i:Lcom/xiaomi/passport/servicetoken/a$a;

.field public static final enum j:Lcom/xiaomi/passport/servicetoken/a$a;

.field public static final enum k:Lcom/xiaomi/passport/servicetoken/a$a;

.field private static final synthetic l:[Lcom/xiaomi/passport/servicetoken/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v1, "ERROR_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->a:Lcom/xiaomi/passport/servicetoken/a$a;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v1, "ERROR_NONE"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->b:Lcom/xiaomi/passport/servicetoken/a$a;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v1, "ERROR_NO_ACCOUNT"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->c:Lcom/xiaomi/passport/servicetoken/a$a;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v1, "ERROR_APP_PERMISSION_FORBIDDEN"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v1, "ERROR_IOERROR"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->e:Lcom/xiaomi/passport/servicetoken/a$a;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v1, "ERROR_OLD_MIUI_ACCOUNT_MANAGER_PERMISSION_ISSUE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->f:Lcom/xiaomi/passport/servicetoken/a$a;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v1, "ERROR_CANCELLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->g:Lcom/xiaomi/passport/servicetoken/a$a;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v1, "ERROR_AUTHENTICATOR_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->h:Lcom/xiaomi/passport/servicetoken/a$a;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v1, "ERROR_TIME_OUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->i:Lcom/xiaomi/passport/servicetoken/a$a;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v1, "ERROR_REMOTE_EXCEPTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->j:Lcom/xiaomi/passport/servicetoken/a$a;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/a$a;

    const-string v1, "ERROR_USER_INTERACTION_NEEDED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->k:Lcom/xiaomi/passport/servicetoken/a$a;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/xiaomi/passport/servicetoken/a$a;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/a$a;->a:Lcom/xiaomi/passport/servicetoken/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/servicetoken/a$a;->b:Lcom/xiaomi/passport/servicetoken/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/servicetoken/a$a;->c:Lcom/xiaomi/passport/servicetoken/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/servicetoken/a$a;->d:Lcom/xiaomi/passport/servicetoken/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/passport/servicetoken/a$a;->e:Lcom/xiaomi/passport/servicetoken/a$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/passport/servicetoken/a$a;->f:Lcom/xiaomi/passport/servicetoken/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/passport/servicetoken/a$a;->g:Lcom/xiaomi/passport/servicetoken/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/passport/servicetoken/a$a;->h:Lcom/xiaomi/passport/servicetoken/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/passport/servicetoken/a$a;->i:Lcom/xiaomi/passport/servicetoken/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/passport/servicetoken/a$a;->j:Lcom/xiaomi/passport/servicetoken/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/passport/servicetoken/a$a;->k:Lcom/xiaomi/passport/servicetoken/a$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->l:[Lcom/xiaomi/passport/servicetoken/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/a$a;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/servicetoken/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/servicetoken/a$a;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/servicetoken/a$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/servicetoken/a$a;->l:[Lcom/xiaomi/passport/servicetoken/a$a;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/servicetoken/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/servicetoken/a$a;

    return-object v0
.end method
