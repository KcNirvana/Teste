.class public final enum Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;
.super Ljava/lang/Enum;
.source "UserBehaviourBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserBehaviourType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

.field public static final enum TYPE_CLICK:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

.field public static final enum TYPE_EDITTEXT_INPUT:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

.field public static final enum TYPE_FOUCS_CHANGES:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

.field public static final enum TYPE_NULL:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

.field public static final enum TYPE_PAGE_ENTER:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

.field public static final enum TYPE_SCREEN_TOUCH:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;


# instance fields
.field public final uaEventTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    const-string/jumbo v1, "TYPE_PAGE_ENTER"

    const-string/jumbo v2, "pe"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_PAGE_ENTER:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    const-string/jumbo v1, "TYPE_EDITTEXT_INPUT"

    const-string/jumbo v2, "ei"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_EDITTEXT_INPUT:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    const-string/jumbo v1, "TYPE_FOUCS_CHANGES"

    const-string/jumbo v2, "fc"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_FOUCS_CHANGES:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    const-string/jumbo v1, "TYPE_CLICK"

    const-string/jumbo v2, "cc"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_CLICK:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    const-string/jumbo v1, "TYPE_SCREEN_TOUCH"

    const-string/jumbo v2, "st"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_SCREEN_TOUCH:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    new-instance v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    const-string/jumbo v1, "TYPE_NULL"

    const/4 v2, 0x5

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_NULL:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_PAGE_ENTER:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_EDITTEXT_INPUT:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_FOUCS_CHANGES:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_CLICK:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_SCREEN_TOUCH:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->TYPE_NULL:Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->$VALUES:[Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->uaEventTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;
    .locals 1

    const-class v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;
    .locals 1

    sget-object v0, Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->$VALUES:[Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    invoke-virtual {v0}, [Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/rdssecuritysdk/v3/impl/UserBehaviourBuilder$UserBehaviourType;

    return-object v0
.end method
