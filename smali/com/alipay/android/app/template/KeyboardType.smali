.class public final enum Lcom/alipay/android/app/template/KeyboardType;
.super Ljava/lang/Enum;
.source "KeyboardType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/template/KeyboardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/template/KeyboardType;

.field public static final enum idcard:Lcom/alipay/android/app/template/KeyboardType;

.field public static final enum money:Lcom/alipay/android/app/template/KeyboardType;

.field public static final enum num:Lcom/alipay/android/app/template/KeyboardType;

.field public static final enum phone:Lcom/alipay/android/app/template/KeyboardType;

.field public static final enum text:Lcom/alipay/android/app/template/KeyboardType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/template/KeyboardType;

    const-string/jumbo v1, "num"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/KeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/KeyboardType;->num:Lcom/alipay/android/app/template/KeyboardType;

    new-instance v0, Lcom/alipay/android/app/template/KeyboardType;

    const-string/jumbo v1, "text"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/template/KeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/KeyboardType;->text:Lcom/alipay/android/app/template/KeyboardType;

    new-instance v0, Lcom/alipay/android/app/template/KeyboardType;

    const-string/jumbo v1, "money"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/template/KeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/KeyboardType;->money:Lcom/alipay/android/app/template/KeyboardType;

    new-instance v0, Lcom/alipay/android/app/template/KeyboardType;

    const-string/jumbo v1, "idcard"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/template/KeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/KeyboardType;->idcard:Lcom/alipay/android/app/template/KeyboardType;

    new-instance v0, Lcom/alipay/android/app/template/KeyboardType;

    const-string/jumbo v1, "phone"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/template/KeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/KeyboardType;->phone:Lcom/alipay/android/app/template/KeyboardType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/android/app/template/KeyboardType;

    sget-object v1, Lcom/alipay/android/app/template/KeyboardType;->num:Lcom/alipay/android/app/template/KeyboardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/template/KeyboardType;->text:Lcom/alipay/android/app/template/KeyboardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/template/KeyboardType;->money:Lcom/alipay/android/app/template/KeyboardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/template/KeyboardType;->idcard:Lcom/alipay/android/app/template/KeyboardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/template/KeyboardType;->phone:Lcom/alipay/android/app/template/KeyboardType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/android/app/template/KeyboardType;->$VALUES:[Lcom/alipay/android/app/template/KeyboardType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/KeyboardType;
    .locals 1

    const-class v0, Lcom/alipay/android/app/template/KeyboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/KeyboardType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/template/KeyboardType;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/template/KeyboardType;->$VALUES:[Lcom/alipay/android/app/template/KeyboardType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/template/KeyboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/template/KeyboardType;

    return-object v0
.end method
