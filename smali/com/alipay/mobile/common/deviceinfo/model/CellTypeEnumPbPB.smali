.class public final enum Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;
.super Ljava/lang/Enum;
.source "CellTypeEnumPbPB.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

.field public static final enum CDMA:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

.field public static final enum GSM:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    const-string/jumbo v1, "GSM"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->GSM:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    new-instance v0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    const-string/jumbo v1, "CDMA"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->CDMA:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    sget-object v1, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->GSM:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->CDMA:Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->$VALUES:[Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

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

    iput p3, p0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;
    .locals 1

    const-class v0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->$VALUES:[Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/deviceinfo/model/CellTypeEnumPbPB;->value:I

    return v0
.end method
