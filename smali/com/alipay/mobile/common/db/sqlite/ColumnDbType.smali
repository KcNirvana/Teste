.class public final enum Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;
.super Ljava/lang/Enum;
.source "ColumnDbType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

.field public static final enum BLOB:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

.field public static final enum INTEGER:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

.field public static final enum REAL:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

.field public static final enum TEXT:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    const-string/jumbo v1, "INTEGER"

    const-string/jumbo v2, "INTEGER"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->INTEGER:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    new-instance v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    const-string/jumbo v1, "REAL"

    const-string/jumbo v2, "REAL"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->REAL:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    new-instance v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    const-string/jumbo v1, "TEXT"

    const-string/jumbo v2, "TEXT"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->TEXT:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    new-instance v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    const-string/jumbo v1, "BLOB"

    const-string/jumbo v2, "BLOB"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->BLOB:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    sget-object v1, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->INTEGER:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->REAL:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->TEXT:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->BLOB:Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->$VALUES:[Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

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

    iput-object p3, p0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;
    .locals 1

    const-class v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->$VALUES:[Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/db/sqlite/ColumnDbType;->value:Ljava/lang/String;

    return-object v0
.end method
