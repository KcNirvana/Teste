.class public final enum Lcom/alipay/android/phone/inside/service/BinderStatus;
.super Ljava/lang/Enum;
.source "BinderStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/inside/service/BinderStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/inside/service/BinderStatus;

.field public static final enum ILLEGAL:Lcom/alipay/android/phone/inside/service/BinderStatus;

.field public static final enum NO_MATCH_ACTION:Lcom/alipay/android/phone/inside/service/BinderStatus;

.field public static final enum SUCCESS:Lcom/alipay/android/phone/inside/service/BinderStatus;


# instance fields
.field final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/android/phone/inside/service/BinderStatus;

    const-string/jumbo v1, "SUCCESS"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/android/phone/inside/service/BinderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/phone/inside/service/BinderStatus;->SUCCESS:Lcom/alipay/android/phone/inside/service/BinderStatus;

    new-instance v0, Lcom/alipay/android/phone/inside/service/BinderStatus;

    const-string/jumbo v1, "ILLEGAL"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/phone/inside/service/BinderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/phone/inside/service/BinderStatus;->ILLEGAL:Lcom/alipay/android/phone/inside/service/BinderStatus;

    new-instance v0, Lcom/alipay/android/phone/inside/service/BinderStatus;

    const-string/jumbo v1, "NO_MATCH_ACTION"

    const/16 v2, 0x3ea

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/phone/inside/service/BinderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/phone/inside/service/BinderStatus;->NO_MATCH_ACTION:Lcom/alipay/android/phone/inside/service/BinderStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/phone/inside/service/BinderStatus;

    sget-object v1, Lcom/alipay/android/phone/inside/service/BinderStatus;->SUCCESS:Lcom/alipay/android/phone/inside/service/BinderStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/phone/inside/service/BinderStatus;->ILLEGAL:Lcom/alipay/android/phone/inside/service/BinderStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/phone/inside/service/BinderStatus;->NO_MATCH_ACTION:Lcom/alipay/android/phone/inside/service/BinderStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/android/phone/inside/service/BinderStatus;->$VALUES:[Lcom/alipay/android/phone/inside/service/BinderStatus;

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

    iput p3, p0, Lcom/alipay/android/phone/inside/service/BinderStatus;->mStatus:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/inside/service/BinderStatus;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/inside/service/BinderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/service/BinderStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/inside/service/BinderStatus;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/service/BinderStatus;->$VALUES:[Lcom/alipay/android/phone/inside/service/BinderStatus;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/inside/service/BinderStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/inside/service/BinderStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/inside/service/BinderStatus;->mStatus:I

    return v0
.end method
