.class public final enum Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;
.super Ljava/lang/Enum;
.source "PassportCore.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;",
        "",
        "(Ljava/lang/String;I)V",
        "SMS",
        "PSW",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

.field public static final enum PSW:Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

.field public static final enum SMS:Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    new-instance v1, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    const-string v2, "SMS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;->SMS:Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    aput-object v1, v0, v3

    new-instance v1, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    const-string v2, "PSW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;->PSW:Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;->$VALUES:[Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;->$VALUES:[Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/ui/internal/PhoneAuthMethod;

    return-object v0
.end method
