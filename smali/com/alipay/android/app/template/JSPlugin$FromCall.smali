.class public final enum Lcom/alipay/android/app/template/JSPlugin$FromCall;
.super Ljava/lang/Enum;
.source "JSPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/template/JSPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FromCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/template/JSPlugin$FromCall;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/template/JSPlugin$FromCall;

.field public static final enum GET_PROP:Lcom/alipay/android/app/template/JSPlugin$FromCall;

.field public static final enum INVOKE:Lcom/alipay/android/app/template/JSPlugin$FromCall;

.field public static final enum SET_PROP:Lcom/alipay/android/app/template/JSPlugin$FromCall;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;

    const-string/jumbo v1, "GET_PROP"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/JSPlugin$FromCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;->GET_PROP:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    new-instance v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;

    const-string/jumbo v1, "SET_PROP"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/template/JSPlugin$FromCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;->SET_PROP:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    new-instance v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;

    const-string/jumbo v1, "INVOKE"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/template/JSPlugin$FromCall;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;->INVOKE:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/template/JSPlugin$FromCall;

    sget-object v1, Lcom/alipay/android/app/template/JSPlugin$FromCall;->GET_PROP:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/template/JSPlugin$FromCall;->SET_PROP:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/template/JSPlugin$FromCall;->INVOKE:Lcom/alipay/android/app/template/JSPlugin$FromCall;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;->$VALUES:[Lcom/alipay/android/app/template/JSPlugin$FromCall;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/JSPlugin$FromCall;
    .locals 1

    const-class v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/template/JSPlugin$FromCall;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/template/JSPlugin$FromCall;->$VALUES:[Lcom/alipay/android/app/template/JSPlugin$FromCall;

    invoke-virtual {v0}, [Lcom/alipay/android/app/template/JSPlugin$FromCall;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/template/JSPlugin$FromCall;

    return-object v0
.end method
