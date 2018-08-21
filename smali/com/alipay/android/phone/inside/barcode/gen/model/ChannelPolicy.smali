.class public final enum Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;
.super Ljava/lang/Enum;
.source "ChannelPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

.field public static final enum DEFAULT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

.field public static final enum LAST_SELECT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    const-string/jumbo v1, "DEFAULT"

    const-string/jumbo v2, "default"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->DEFAULT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    new-instance v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    const-string/jumbo v1, "LAST_SELECT"

    const-string/jumbo v2, "lastSelect"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->LAST_SELECT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    sget-object v1, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->DEFAULT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->LAST_SELECT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->$VALUES:[Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

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

    iput-object p3, p0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->DEFAULT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->DEFAULT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->LAST_SELECT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->LAST_SELECT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->LAST_SELECT:Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;
    .locals 1

    const-class v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->$VALUES:[Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/barcode/gen/model/ChannelPolicy;->mValue:Ljava/lang/String;

    return-object v0
.end method
